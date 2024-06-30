import 'package:flutter/material.dart';
import 'package:nectar_app/core/utils/app_images.dart';
import 'package:nectar_app/core/widgets/custom_button.dart';
import 'package:nectar_app/core/widgets/custom_text_field.dart';
import 'package:nectar_app/features/forget%20password/presentation/views/widgets/custom_appbar.dart';
import 'package:nectar_app/features/forget%20password/presentation/views/widgets/decoration_image_method.dart';
import 'package:nectar_app/features/forget%20password/presentation/views/widgets/show_modal_bottom_sheet.dart';
import 'package:nectar_app/features/forget%20password/presentation/views/widgets/text_section_forget_password.dart';

class ForgetPasswordViewBody extends StatelessWidget {
  const ForgetPasswordViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        image: decorationImageMethod(),
      ),
      child: CustomScrollView(
        slivers: [
          const SliverToBoxAdapter(
            child: CustomAppBar(),
          ),
          SliverToBoxAdapter(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Image.asset(
                    AppImages.orangeCarrot,
                    height: MediaQuery.of(context).size.height * .15,
                  ),
                ),
                const SizedBox(
                  height: 50,
                ),
                const TextSectionForgetPasswordView(),
                const CustomTextField(),
                const SizedBox(
                  height: 50,
                ),
                CustomButton(
                  descriptionButtonTxt: 'Continue',
                  onPressed: () {
                    showModalButtomSheetMethod(context);
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
