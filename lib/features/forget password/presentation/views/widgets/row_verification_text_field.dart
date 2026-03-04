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
    final controllers = [
      ForgetPasswordControllers.c1,
      ForgetPasswordControllers.c2,
      ForgetPasswordControllers.c3,
      ForgetPasswordControllers.c4,
      ForgetPasswordControllers.c5,
      ForgetPasswordControllers.c6,
    ];

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
      height: 74,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: List.generate(
          controllers.length * 2 - 1,
          (index) {
            if (index.isOdd) {
              return const SizedBox(width: 8);
            }
            final controller = controllers[index ~/ 2];
            return Expanded(
              child: CustomVerificationTextField(
                controller: controller,
              ),
            );
          },
        ),
      ),
    );
  }
}
