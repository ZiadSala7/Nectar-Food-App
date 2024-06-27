import 'package:flutter/material.dart';
import 'package:nectar_app/features/login/presentation/views/widgets/login_body_items.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: const LoginBodyItems(),
    );
  }
}
