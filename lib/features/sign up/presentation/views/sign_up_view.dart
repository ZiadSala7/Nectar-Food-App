import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nectar_app/core/api/dio_consumer.dart';
import 'package:nectar_app/features/sign%20up/data/repo/sign_up_repo_imple.dart';
import 'package:nectar_app/features/sign%20up/presentation/view%20models/sing_up_cubit/sign_up_cubit.dart';
import 'package:nectar_app/features/sign%20up/presentation/views/widgets/sign_up_view_body.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SignUpCubit(
        signUpRepoImple: SignUpRepoImple(
          DioConsumer(Dio()),
        ),
      ),
      child: const Scaffold(
        body: SignUpViewBody(),
      ),
    );
  }
}
