import 'package:dartz/dartz.dart';
import 'package:nectar_app/core/errors/auth_model.dart';

abstract class SignUpRepo {
  Future<Either<String, AuthModel>> signUp({
    required String username,
    required String phoneNumber,
    required String email,
    required String password,
    required String confirmPassword,
  });
}
