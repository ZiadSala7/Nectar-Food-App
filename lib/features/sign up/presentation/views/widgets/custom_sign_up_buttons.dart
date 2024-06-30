import 'package:flutter/material.dart';
import 'package:nectar_app/constants.dart';
import 'package:nectar_app/core/utils/styles.dart';
import 'package:nectar_app/core/widgets/text_button.dart';

class CustomSignUpButtons extends StatelessWidget {
  const CustomSignUpButtons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(
              width: 15,
            ),
            Text(
              'By continuing you agree to our ',
              style: Styles.textStyle14.copyWith(
                fontWeight: FontWeight.w500,
              ),
            ),
            TextButtonLogin(
              color: commonColor,
              descriptionTxt: 'Terms of Service',
              onPressed: () {
                // GoRouter.of(context).push(AppRouters.signUpView);
              },
            ),
            const Text(
              'and',
              style: Styles.textStyle14,
            ),
          ],
        ),
        TextButtonLogin(
          color: commonColor,
          descriptionTxt: ' Privacy Policy.',
          onPressed: () {
            // GoRouter.of(context).push(AppRouters.signUpView);
          },
        ),
      ],
    );
  }
}
