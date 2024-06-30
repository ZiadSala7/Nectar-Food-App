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
          height: 40,
        ),
        const Text('Username'),
        CustomTextField(),
        const SizedBox(
          height: 40,
        ),
        const Text('Email'),
        CustomTextField(
          suffixIcon: IconButton(
            icon: const Icon(
              Icons.check,
              color: Colors.green,
            ),
            onPressed: () {},
          ),
        ),
        const SizedBox(
          height: 40,
        ),
        const Text('Password'),
        const CustomPasswordTextField(),
      ],
    );
  }
}
