import 'package:flutter/material.dart';
import 'package:nectar_app/core/widgets/custom_password_text_field.dart';
import 'package:nectar_app/core/widgets/custom_text_field.dart';
import 'package:nectar_app/features/forget%20password/data/models/forget_password_controllers.dart';
import 'package:nectar_app/core/widgets/validate_methods.dart';

class TextFieldResetPasswordSection extends StatelessWidget {
  const TextFieldResetPasswordSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text('Email'),
        CustomTextField(
          textEditingController: ForgetPasswordControllers.email,
          validate: emailValidateMethod,
        ),
        const SizedBox(
          height: 40,
        ),
        const Text('Password'),
        CustomPasswordTextField(
          textEditingController: ForgetPasswordControllers.password,
          validate: passwordValidateMethod,
        ),
        const SizedBox(
          height: 40,
        ),
        const Text('Confirm Password'),
        CustomPasswordTextField(
          textEditingController: ForgetPasswordControllers.confirmPassword,
          validate: confirmPasswordValidateMethodReset,
        ),
      ],
    );
  }
}
