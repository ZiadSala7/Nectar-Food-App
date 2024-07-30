import 'package:nectar_app/core/api/dio_consumer.dart';
import 'package:nectar_app/core/api/endpoints.dart';
import 'package:nectar_app/features/forget%20password/data/models/forget_password_controllers.dart';
import 'package:nectar_app/features/forget%20password/data/repo/forget_password_repo.dart';

class ForgetPasswordRepoImple extends ForgetPasswordRepo {
  final DioConsumer api;
  ForgetPasswordRepoImple({required this.api});

  @override
  Future<String> sendEmail() async {
    final response = await api.postMethod(
      Endpoints.sendNumForEmail,
      null,
      {
        ApiKeys.sendEmail: ForgetPasswordControllers.email.text,
      },
    );

    return response.statusCode == 200
        ? "Code has been sent successfully"
        : "Something went wrong, try again";
  }
}
