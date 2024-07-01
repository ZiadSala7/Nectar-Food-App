import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:nectar_app/constants.dart';
import 'package:nectar_app/core/utils/app_routers.dart';
import 'package:nectar_app/core/utils/styles.dart';
import 'package:nectar_app/core/widgets/text_button.dart';

class LoginButtonNavigator extends StatelessWidget {
  const LoginButtonNavigator({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Already have an account?',
          style: Styles.textStyle18.copyWith(
            color: Colors.black,
            fontWeight: FontWeight.w400,
          ),
        ),
        TextButtonLogin(
          color: commonColor,
          descriptionTxt: 'Sign up',
          onPressed: () {
            GoRouter.of(context).push(AppRouters.loginView);
          },
        ),
      ],
    );
  }
}
