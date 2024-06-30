import 'package:flutter/material.dart';
import 'package:nectar_app/constants.dart';
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
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CustomVerificationTextField(),
          CustomVerificationTextField(),
          CustomVerificationTextField(),
          CustomVerificationTextField(),
          CustomVerificationTextField(),
        ],
      ),
    );
  }
}
