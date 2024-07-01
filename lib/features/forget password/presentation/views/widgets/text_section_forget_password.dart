import 'package:flutter/material.dart';
import 'package:nectar_app/constants.dart';
import 'package:nectar_app/core/utils/styles.dart';

class TextSectionForgetPasswordView extends StatelessWidget {
  const TextSectionForgetPasswordView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Forget Password',
          style: Styles.textStyle30,
        ),
        const SizedBox(
          height: 30,
        ),
        Text(
          'Enter your email for verification process we\nwill send 5 digits code to your email',
          style: Styles.textStyle16.copyWith(
            color: greyColor,
          ),
        ),
        const SizedBox(
          height: 50,
        ),
        const Text(
          'Email',
          style: Styles.textStyle18,
        ),
      ],
    );
  }
}
