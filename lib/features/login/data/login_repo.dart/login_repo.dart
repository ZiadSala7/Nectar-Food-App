import 'package:dartz/dartz.dart';
import 'package:nectar_app/core/errors/auth_model.dart';

abstract class LoginRepo {
  Future<Either<String, AuthModel>> login({
    required String email,
    required String password,
  });
}
