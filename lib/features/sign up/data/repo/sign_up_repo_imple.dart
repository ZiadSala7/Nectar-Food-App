import 'package:dartz/dartz.dart';
import 'package:nectar_app/core/api/dio_consumer.dart';
import 'package:nectar_app/core/api/endpoints.dart';
import 'package:nectar_app/features/sign%20up/data/models/sign_up_model.dart';
import 'package:nectar_app/features/sign%20up/data/repo/sign_up_repo.dart';

class SignUpRepoImple extends SignUpRepo {
  DioConsumer api;
  SignUpRepoImple(this.api);

  @override
  Future<Either<String, SignUpModel>> signUp({
    required String username,
    required String phoneNumber,
    required String email,
    required String password,
    required String confirmPassword,
  }) async {
    try {
      final response = await api.postMethod(
        Endpoints.register,
        {
          ApiKeys.username: username,
          ApiKeys.phoneNumber: phoneNumber,
          ApiKeys.email: email,
          ApiKeys.password: password,
          ApiKeys.confirmPassword: confirmPassword,
        },
        null,
      );
      SignUpModel signUpModel = SignUpModel.fromJson(response, false);
      if (signUpModel.statusCode != 200) {
        return left(signUpModel.data == null
            ? signUpModel.message
            : signUpModel.data[0]);
      } else {
        DataModel dataModel = DataModel.fromJson(response);
        signUpModel.data = dataModel;
        return right(signUpModel);
      }
    } catch (e) {
      return left(e.toString());
    }
  }
}
