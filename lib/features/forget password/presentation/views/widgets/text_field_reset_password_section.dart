import 'package:flutter/material.dart';
import 'package:nectar_app/core/widgets/custom_password_text_field.dart';
import 'package:nectar_app/core/widgets/custom_text_field.dart';

class TextFieldResetPasswordSection extends StatelessWidget {
  const TextFieldResetPasswordSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Email'),
        CustomTextField(),
        SizedBox(
          height: 40,
        ),
        Text('Password'),
        CustomPasswordTextField(),
        SizedBox(
          height: 40,
        ),
        Text('Confirm Password'),
        CustomPasswordTextField(),
      ],
    );
  }
}
