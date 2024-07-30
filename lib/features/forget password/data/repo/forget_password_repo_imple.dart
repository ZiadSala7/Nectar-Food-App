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
    final response = await api.postMethod(
      Endpoints.sendNumForEmail,
      null,
      {
        ApiKeys.sendEmail: ForgetPasswordControllers.email.text,
      },
    );

    return response.statusCode == 200
        ? left("Code has been sent successfully")
        : right("Something went wrong, try again");
  }
}
