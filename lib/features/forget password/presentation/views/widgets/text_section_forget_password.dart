import 'package:flutter/material.dart';
import 'package:nectar_app/core/utils/styles.dart';

class TextSectionForgetPasswordView extends StatelessWidget {
  const TextSectionForgetPasswordView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Forget Password',
          style: Styles.textStyle50.copyWith(
            color: Colors.black,
            fontSize: 25,
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        Text(
          'Enter your email for verification process we\nwill send 5 digits code to your email',
          style: Styles.textStyle16.copyWith(
            color: const Color.fromARGB(255, 117, 116, 116),
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }
}
