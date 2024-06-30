import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:nectar_app/constants.dart';
import 'package:nectar_app/core/utils/app_routers.dart';
import 'package:nectar_app/core/widgets/custom_button.dart';
import 'package:nectar_app/core/widgets/text_button.dart';

class ButtonsSection extends StatelessWidget {
  const ButtonsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Align(
          alignment: Alignment.centerRight,
          child: TextButtonLogin(
            color: commonColor,
            descriptionTxt: 'Forget password ?',
            onPressed: () {
              GoRouter.of(context).push(AppRouters.forgetPasswordView);
            },
          ),
        ),
        const SizedBox(
          height: 15,
        ),
        CustomButton(
          descriptionButtonTxt: 'Log in',
          onPressed: () {},
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(r'Don’t have an account?'),
            TextButtonLogin(
              color: commonColor,
              descriptionTxt: 'Sign up',
              onPressed: () {
                GoRouter.of(context).push(AppRouters.signUpView);
              },
            ),
          ],
        ),
      ],
    );
  }
}
