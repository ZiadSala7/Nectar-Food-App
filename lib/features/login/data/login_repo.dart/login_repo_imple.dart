import 'package:dartz/dartz.dart';
import 'package:nectar_app/core/api/dio_consumer.dart';
import 'package:nectar_app/core/api/endpoints.dart';
import 'package:nectar_app/core/errors/auth_model.dart';
import 'package:nectar_app/features/login/data/login_repo.dart/login_repo.dart';

class LoginRepoImple extends LoginRepo {
  DioConsumer api;
  LoginRepoImple(this.api);

  @override
  Future<Either<String, AuthModel>> login({
    required String email,
    required String password,
  }) async {
    final response = await api.postMethod(
      Endpoints.login,
      {
        ApiKeys.email: email,
        ApiKeys.password: password,
      },
      null,
    );

    AuthModel loginModel = AuthModel.fromJson(response);
    if (loginModel.statusCode != 200) {
      return left(loginModel.message);
    } else {
      DataModel dataModel = DataModel.fromJson(response);
      loginModel.data = dataModel;
      return right(loginModel);
    }
  }
}
