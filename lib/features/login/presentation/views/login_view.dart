import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nectar_app/core/api/dio_consumer.dart';
import 'package:nectar_app/features/login/data/login_repo.dart/login_repo_imple.dart';
import 'package:nectar_app/features/login/presentation/view%20models/login_cubit/login_cubit.dart';
import 'package:nectar_app/features/login/presentation/views/widgets/login_view_body.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});
  static const String id = 'LoginView';

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LoginCubit(
        loginRepoImple: LoginRepoImple(
          DioConsumer(
            Dio(),
          ),
        ),
      ),
      child: const Scaffold(
        body: LoginViewBody(),
      ),
    );
  }
}
