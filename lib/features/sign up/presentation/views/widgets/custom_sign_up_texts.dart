import 'package:flutter/material.dart';
import 'package:nectar_app/constants.dart';
import 'package:nectar_app/core/utils/styles.dart';

class CustomSignUpPrivacyTexts extends StatelessWidget {
  const CustomSignUpPrivacyTexts({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      // mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const SizedBox(
          height: 15,
        ),
        Row(
          children: [
            const Text(
              'By continuing you agree to our ',
              style: Styles.textStyle15,
            ),
            Text(
              'Terms of Service',
              style: Styles.textStyle15.copyWith(
                color: commonColor,
                fontWeight: FontWeight.bold,
              ),
            ),
            const Text(
              ' and',
              style: Styles.textStyle15,
            ),
          ],
        ),
        const SizedBox(
          height: 5,
        ),
        Text(
          'Privacy Policy.',
          style: Styles.textStyle15.copyWith(
            color: commonColor,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
