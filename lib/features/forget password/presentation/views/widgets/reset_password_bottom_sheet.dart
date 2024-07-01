import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:nectar_app/core/utils/app_routers.dart';
import 'package:nectar_app/core/widgets/custom_button.dart';
import 'package:nectar_app/features/forget%20password/presentation/views/widgets/custom_box_decoration_method.dart';
import 'package:nectar_app/features/forget%20password/presentation/views/widgets/text_field_reset_password_section.dart';
import 'package:nectar_app/features/forget%20password/presentation/views/widgets/text_section_reset_password.dart';

class ResetPasswordBottomSheet extends StatelessWidget {
  const ResetPasswordBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15),
      height: MediaQuery.of(context).size.height / 1.2,
      width: MediaQuery.of(context).size.width,
      decoration: customBoxDecorationMethod(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const SizedBox(
            height: 50,
          ),
          const TextSectionResetPassword(),
          const SizedBox(
            height: 35,
          ),
          const TextFieldResetPasswordSection(),
          const SizedBox(
            height: 50,
          ),
          CustomButton(
            descriptionButtonTxt: 'Reset Password',
            onPressed: () {
              GoRouter.of(context).push(AppRouters.resetPasswordAcceptedView);
            },
          ),
        ],
      ),
    );
  }
}
