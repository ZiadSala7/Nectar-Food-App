import 'package:flutter/material.dart';
import 'package:nectar_app/core/utils/app_images.dart';
import 'package:nectar_app/core/utils/styles.dart';
import 'package:nectar_app/core/widgets/custom_button.dart';
import 'package:nectar_app/core/widgets/custom_text_field.dart';
import 'package:nectar_app/features/forget%20password/presentation/views/widgets/custom_appbar.dart';
import 'package:nectar_app/features/forget%20password/presentation/views/widgets/text_section_forget_password.dart';

class ForgetPasswordViewBody extends StatelessWidget {
  const ForgetPasswordViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage(AppImages.backgroundImg),
          fit: BoxFit.fill,
        ),
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
                const SizedBox(
                  height: 50,
                ),
                Text(
                  'Email',
                  style: Styles.textStyle20.copyWith(
                    color: const Color.fromARGB(255, 117, 116, 116),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const CustomTextField(),
                const SizedBox(
                  height: 50,
                ),
                CustomButton(
                  descriptionButtonTxt: 'Continue',
                  onPressed: () {},
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
