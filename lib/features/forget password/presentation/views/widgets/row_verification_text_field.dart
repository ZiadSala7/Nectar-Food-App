import 'package:flutter/material.dart';
import 'package:nectar_app/constants.dart';
import 'package:nectar_app/features/forget%20password/data/models/forget_password_controllers.dart';
import 'package:nectar_app/features/forget%20password/presentation/views/widgets/custom_verification_text_field.dart';

class RowVerificationTextField extends StatelessWidget {
  const RowVerificationTextField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
          width: 2,
          color: commonColorUpdated,
        ),
      ),
      height: 80,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CustomVerificationTextField(
            controller: ForgetPasswordControllers.c1,
          ),
          CustomVerificationTextField(
            controller: ForgetPasswordControllers.c2,
          ),
          CustomVerificationTextField(
            controller: ForgetPasswordControllers.c3,
          ),
          CustomVerificationTextField(
            controller: ForgetPasswordControllers.c4,
          ),
          CustomVerificationTextField(
            controller: ForgetPasswordControllers.c5,
          ),
          CustomVerificationTextField(
            controller: ForgetPasswordControllers.c6,
          ),
        ],
      ),
    );
  }
}
