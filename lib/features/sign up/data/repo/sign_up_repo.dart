import 'package:dartz/dartz.dart';
import 'package:nectar_app/features/sign%20up/data/models/sign_up_model.dart';

abstract class SignUpRepo {
  Future<Either<String, SignUpModel>> signUp({
    required String username,
    required String phoneNumber,
    required String email,
    required String password,
    required String confirmPassword,
  });
}
