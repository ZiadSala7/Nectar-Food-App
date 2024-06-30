import 'package:flutter/material.dart';
import 'package:nectar_app/core/widgets/custom_password_text_field.dart';
import 'package:nectar_app/core/widgets/custom_text_field.dart';

class TextFieldResetPasswordSection extends StatelessWidget {
  const TextFieldResetPasswordSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text('Email'),
        CustomTextField(),
        const SizedBox(
          height: 40,
        ),
        const Text('Password'),
        const CustomPasswordTextField(),
        const SizedBox(
          height: 40,
        ),
        const Text('Confirm Password'),
        const CustomPasswordTextField(),
      ],
    );
  }
}
