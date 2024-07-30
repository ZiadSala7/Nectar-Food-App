import 'package:dartz/dartz.dart';

abstract class ForgetPasswordRepo {
  Future<Either<String, String>> sendEmail();
}
