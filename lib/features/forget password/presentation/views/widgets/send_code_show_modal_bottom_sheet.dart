import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:nectar_app/core/widgets/custom_button.dart';
import 'package:nectar_app/features/forget%20password/presentation/views/widgets/custom_box_decoration_method.dart';
import 'package:nectar_app/features/forget%20password/presentation/views/widgets/custom_show_modal_texts.dart';
import 'package:nectar_app/features/forget%20password/presentation/views/widgets/reset_password_bottom_sheet.dart';
import 'package:nectar_app/features/forget%20password/presentation/views/widgets/row_verification_text_field.dart';

class SendCodeShowModalBottomSheet extends StatelessWidget {
  const SendCodeShowModalBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        height: MediaQuery.of(context).size.height / 1.65,
        width: MediaQuery.of(context).size.width,
        decoration: customBoxDecorationMethod(),
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const SizedBox(
                height: 50,
              ),
              const CustomShowModalBottomSheetTexts(),
              const RowVerificationTextField(),
              const SizedBox(
                height: 35,
              ),
              CustomButton(
                descriptionButtonTxt: 'Send code',
                onPressed: () {
                  GoRouter.of(context).pop();
                  showBottomSheet(
                      context: context,
                      builder: (context) {
                        return const ResetPasswordBottomSheet();
                      });
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
