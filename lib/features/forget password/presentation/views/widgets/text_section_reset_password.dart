import 'package:flutter/material.dart';
import 'package:nectar_app/constants.dart';
import 'package:nectar_app/core/utils/styles.dart';

class TextSectionResetPassword extends StatelessWidget {
  const TextSectionResetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Reset Password',
          style: Styles.textStyle30,
        ),
        const SizedBox(
          height: 30,
        ),
        Text(
          'Enter new password for your account to reset \npassword',
          style: Styles.textStyle16.copyWith(
            color: greyColor,
          ),
        ),
        const SizedBox(
          height: 50,
        ),
      ],
    );
  }
}
