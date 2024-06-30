import 'package:flutter/material.dart';
import 'package:nectar_app/core/utils/app_images.dart';
import 'package:nectar_app/features/login/presentation/views/widgets/buttons_section.dart';
import 'package:nectar_app/features/login/presentation/views/widgets/text_field_section.dart';
import 'package:nectar_app/features/login/presentation/views/widgets/text_section.dart';

class LoginBodyItems extends StatelessWidget {
  const LoginBodyItems({
    super.key,
  });

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
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.25,
              width: double.infinity,
              child: Image.asset(AppImages.orangeCarrot),
            ),
            const TextSection(),
            const SizedBox(
              height: 40,
            ),
            //TextField Data
            const TextFieldSection(),
            const SizedBox(
              height: 15,
            ),
            const ButtonsSection(),
          ],
        ),
      ),
    );
  }
}
