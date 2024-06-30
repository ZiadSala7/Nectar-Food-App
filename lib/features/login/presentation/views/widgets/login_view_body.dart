import 'package:flutter/material.dart';
import 'package:nectar_app/features/login/presentation/views/widgets/login_body_items.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(10),
      child: LoginBodyItems(),
    );
  }
}
