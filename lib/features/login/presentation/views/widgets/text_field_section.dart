import 'package:flutter/material.dart';
import 'package:nectar_app/core/widgets/custom_password_text_field.dart';
import 'package:nectar_app/core/widgets/custom_text_field.dart';

class TextFieldSection extends StatelessWidget {
  const TextFieldSection({super.key});

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
      ],
    );
  }
}
