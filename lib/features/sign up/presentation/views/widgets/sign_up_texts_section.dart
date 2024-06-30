import 'package:flutter/material.dart';
import 'package:nectar_app/core/utils/styles.dart';

class SignUpTextsSection extends StatelessWidget {
  const SignUpTextsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Sign Up',
          textAlign: TextAlign.start,
          style: Styles.textStyle20.copyWith(
            color: Colors.black,
            fontSize: 30,
            fontWeight: FontWeight.w500,
          ),
        ),
        const Text(
          'Enter your credentials to continue',
          textAlign: TextAlign.start,
          style: Styles.textStyle14,
        ),
      ],
    );
  }
}
