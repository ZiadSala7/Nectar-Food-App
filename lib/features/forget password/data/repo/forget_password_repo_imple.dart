import 'package:dartz/dartz.dart';
import 'package:nectar_app/core/api/dio_consumer.dart';
import 'package:nectar_app/core/api/endpoints.dart';
import 'package:nectar_app/features/forget%20password/data/models/forget_password_controllers.dart';
import 'package:nectar_app/features/forget%20password/data/repo/forget_password_repo.dart';

class ForgetPasswordRepoImple extends ForgetPasswordRepo {
  final DioConsumer api;
  ForgetPasswordRepoImple({required this.api});

  @override
  Future<Either<String, String>> sendEmail() async {
    try {
      await api.postMethod(
        Endpoints.sendNumForEmail,
        null,
        {
          ApiKeys.sendEmail: ForgetPasswordControllers.email.text,
        },
      );
      return right("Code has been sent successfully");
    } catch (e) {
      return left("Something went wrong, try again");
    }
  }

  @override
  Future<Either<String, String>> sendCode({required String code}) async {
    try {
      await api.getMethod(
        Endpoints.confirmNum,
        null,
        {
          ApiKeys.num: code,
        },
      );
      return right("You can now change you password");
    } catch (e) {
      return left("Please, input a correct code");
    }
  }
}
