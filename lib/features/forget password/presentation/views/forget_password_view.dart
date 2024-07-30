import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nectar_app/core/api/dio_consumer.dart';
import 'package:nectar_app/features/forget%20password/data/repo/forget_password_repo_imple.dart';
import 'package:nectar_app/features/forget%20password/presentation/view%20models/forget_pass_cubit/forget_pass_cubit.dart';
import 'package:nectar_app/features/forget%20password/presentation/view%20models/reset_password_cubit/reset_password_cubit.dart';
import 'package:nectar_app/features/forget%20password/presentation/view%20models/send_code_cubit/send_code_cubit.dart';
import 'package:nectar_app/features/forget%20password/presentation/views/widgets/forget_password_body.dart';

class ForgetPasswordView extends StatelessWidget {
  const ForgetPasswordView({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => ForgetPassCubit(
            api: ForgetPasswordRepoImple(
              api: DioConsumer(Dio()),
            ),
          ),
        ),
        BlocProvider(
          create: (context) => SendCodeCubit(
            ForgetPasswordRepoImple(
              api: DioConsumer(Dio()),
            ),
          ),
        ),
        BlocProvider(
          create: (context) => ResetPasswordCubit(
            ForgetPasswordRepoImple(
              api: DioConsumer(Dio()),
            ),
          ),
        ),
      ],
      child: const Scaffold(
        body: ForgetPasswordViewBody(),
      ),
    );
  }
}
