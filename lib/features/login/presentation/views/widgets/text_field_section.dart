import 'package:flutter/material.dart';
import 'package:nectar_app/core/utils/styles.dart';
import 'package:nectar_app/core/widgets/custom_password_text_field.dart';
import 'package:nectar_app/core/widgets/custom_text_field.dart';
import 'package:nectar_app/features/login/data/model/login_controllers.dart';

class TextFieldSection extends StatelessWidget {
  const TextFieldSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Email',
          style: Styles.textStyle14,
        ),
        CustomTextField(
          textEditingController: LoginControllers.email,
        ),
        const SizedBox(
          height: 40,
        ),
        const Text(
          'Password',
          style: Styles.textStyle14,
        ),
        CustomPasswordTextField(
          textEditingController: LoginControllers.password,
        ),
      ],
    );
  }
}
