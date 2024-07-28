import 'package:flutter/material.dart';
import 'package:nectar_app/core/widgets/custom_password_text_field.dart';
import 'package:nectar_app/core/widgets/custom_text_field.dart';
import 'package:nectar_app/features/sign%20up/data/models/sign_up_controllers.dart';
import 'package:nectar_app/features/sign%20up/presentation/views/widgets/validate_methods.dart';

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
        CustomTextField(
          textEditingController: SignUpControllers.userName,
          validate: userNameValidateMethod,
        ),
        const SizedBox(
          height: 30,
        ),
        const Text('Phone number'),
        CustomTextField(
          textEditingController: SignUpControllers.phoneNumber,
          validate: phoneNumberValidateMethod,
        ),
        const SizedBox(
          height: 30,
        ),
        const Text('Email'),
        CustomTextField(
          textEditingController: SignUpControllers.email,
          validate: emailValidateMethod,
        ),
        const SizedBox(
          height: 30,
        ),
        const Text('Password'),
        CustomPasswordTextField(
          textEditingController: SignUpControllers.password,
          validate: passwordValidateMethod,
        ),
        const SizedBox(
          height: 10,
        ),
        const Text('Confirm Password'),
        CustomPasswordTextField(
          textEditingController: SignUpControllers.confirmPassword,
          validate: confirmPasswordValidateMethod,
        ),
      ],
    );
  }
}
