import 'package:flutter/material.dart';
import 'package:nectar_app/constants.dart';
import 'package:nectar_app/core/utils/app_images.dart';
import 'package:nectar_app/core/utils/styles.dart';
import 'package:nectar_app/core/widgets/custom_button.dart';
import 'package:nectar_app/core/widgets/custom_password_text_field.dart';
import 'package:nectar_app/core/widgets/custom_text_field.dart';
import 'package:nectar_app/features/login/presentation/views/widgets/text_button.dart';

class LoginBodyItems extends StatelessWidget {
  const LoginBodyItems({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage(AppImages.backgroundImg),
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
            Text(
              'Login',
              textAlign: TextAlign.start,
              style: Styles.textStyle20.copyWith(
                color: Colors.black,
                fontSize: 30,
                fontWeight: FontWeight.w500,
              ),
            ),
            const Text(
              'Enter your emails and password',
              textAlign: TextAlign.start,
              style: Styles.textStyle14,
            ),
            const SizedBox(
              height: 40,
            ),
            //TextField Data
            const Text('Email'),
            const CustomTextField(),
            const SizedBox(
              height: 40,
            ),
            const Text('Password'),
            const CustomPasswordTextField(),
            const SizedBox(
              height: 15,
            ),
            const Align(
              alignment: Alignment.centerRight,
              child: TextButtonLogin(
                color: commonColor,
                descriptionTxt: 'Forget password ?',
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            CustomButton(
              descriptionButtonTxt: 'Log in',
              onPressed: () {},
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(r'Don’t have an account?'),
                TextButtonLogin(
                  color: commonColor,
                  descriptionTxt: 'Sign up',
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
