import 'package:dartz/dartz.dart';

abstract class ForgetPasswordRepo {
  Future<Either<String, String>> sendEmail();
  Future<Either<String, String>> sendCode({required String code});
  Future<Either<String, String>> resetPassword();
}
