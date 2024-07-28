import 'package:dartz/dartz.dart';
import 'package:nectar_app/core/errors/auth_model.dart';
import 'package:nectar_app/features/login/data/login_repo.dart/login_repo.dart';

class LoginRepoImple extends LoginRepo {
  @override
  Future<Either<String, AuthModel>> login({
    required String email,
    required String password,
  }) {
    throw UnimplementedError();
  }
}
