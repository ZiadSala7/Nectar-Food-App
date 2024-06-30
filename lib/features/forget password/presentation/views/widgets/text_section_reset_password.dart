import 'package:flutter/material.dart';
import 'package:nectar_app/core/utils/styles.dart';

class TextSectionResetPassword extends StatelessWidget {
  const TextSectionResetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Reset Password',
          style: Styles.textStyle50.copyWith(
            color: Colors.black,
            fontSize: 25,
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        Text(
          'Enter new password for your account to reset \npassword',
          style: Styles.textStyle16.copyWith(
            color: const Color.fromARGB(255, 117, 116, 116),
            fontWeight: FontWeight.w500,
          ),
        ),
        const SizedBox(
          height: 50,
        ),
      ],
    );
  }
}
