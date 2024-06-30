import 'package:flutter/material.dart';
import 'package:nectar_app/core/utils/app_images.dart';
import 'package:nectar_app/features/login/presentation/views/widgets/login_body_items.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage(AppImages.backgroundImg),
          fit: BoxFit.fitWidth,
        ),
      ),
      child: const Padding(
        padding: EdgeInsets.all(10),
        child: LoginBodyItems(),
      ),
    );
  }
}
