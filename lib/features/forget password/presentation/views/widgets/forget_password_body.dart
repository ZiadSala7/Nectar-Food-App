import 'package:flutter/material.dart';
import 'package:nectar_app/core/widgets/custom_background_box_decoration_img.dart';
import 'package:nectar_app/core/widgets/custom_button.dart';
import 'package:nectar_app/core/widgets/custom_orange_carrot_img.dart';
import 'package:nectar_app/core/widgets/custom_text_field.dart';
import 'package:nectar_app/features/forget%20password/presentation/views/widgets/custom_appbar.dart';
import 'package:nectar_app/features/forget%20password/presentation/views/widgets/send_code_show_modal_bottom_sheet.dart';
import 'package:nectar_app/features/forget%20password/presentation/views/widgets/text_section_forget_password.dart';

class ForgetPasswordViewBody extends StatelessWidget {
  const ForgetPasswordViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        padding: const EdgeInsets.all(20),
        decoration: backgroundBoxDecorationImg(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const CustomAppBar(),
            const CustomOrangeCarrotImg(
              mediaSize: .15,
            ),
            const SizedBox(
              height: 15,
            ),
            const TextSectionForgetPasswordView(),
            CustomTextField(),
            const SizedBox(
              height: 50,
            ),
            CustomButton(
              descriptionButtonTxt: 'Continue',
              onPressed: () {
                showBottomSheet(
                    context: context,
                    builder: (context) {
                      return const SendCodeShowModalBottomSheet();
                    });
              },
            ),
          ],
        ),
      ),
    );
  }
}
