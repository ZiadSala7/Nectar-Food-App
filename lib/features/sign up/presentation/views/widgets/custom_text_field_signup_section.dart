import 'package:flutter/material.dart';
import 'package:nectar_app/core/widgets/custom_password_text_field.dart';
import 'package:nectar_app/core/widgets/custom_text_field.dart';

class CustomSignUpTextField extends StatelessWidget {
  const CustomSignUpTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          height: 10,
        ),
        const Text('Username'),
        CustomTextField(),
        const SizedBox(
          height: 30,
        ),
        const Text('Phone number'),
        CustomTextField(),
        const SizedBox(
          height: 30,
        ),
        const Text('Email'),
        CustomTextField(),
        const SizedBox(
          height: 30,
        ),
        const Text('Password'),
        const CustomPasswordTextField(),
        const SizedBox(
          height: 10,
        ),
        const Text('Confirm Password'),
        const CustomPasswordTextField(),
      ],
    );
  }
}
