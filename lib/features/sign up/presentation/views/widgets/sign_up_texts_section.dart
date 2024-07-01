import 'package:flutter/material.dart';
import 'package:nectar_app/core/utils/styles.dart';

class SignUpTextsSection extends StatelessWidget {
  const SignUpTextsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Sign Up',
          style: Styles.textStyle30,
        ),
        Text(
          'Enter your credentials to continue',
          style: Styles.textStyle14.copyWith(
            fontWeight: FontWeight.normal,
          ),
        ),
      ],
    );
  }
}
