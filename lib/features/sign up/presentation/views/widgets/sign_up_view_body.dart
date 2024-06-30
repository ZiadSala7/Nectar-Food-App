import 'package:flutter/material.dart';
import 'package:nectar_app/core/utils/app_images.dart';
import 'package:nectar_app/core/widgets/custom_button.dart';
import 'package:nectar_app/core/widgets/custom_orange_carrot_img.dart';
import 'package:nectar_app/features/sign%20up/presentation/views/widgets/custom_sign_up_buttons.dart';
import 'package:nectar_app/features/sign%20up/presentation/views/widgets/custom_text_field_signup_section.dart';
import 'package:nectar_app/features/sign%20up/presentation/views/widgets/login_button_navigator.dart';
import 'package:nectar_app/features/sign%20up/presentation/views/widgets/sign_up_texts_section.dart';

class SignUpViewBody extends StatelessWidget {
  const SignUpViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage(AppImages.backgroundImg),
          fit: BoxFit.fitWidth,
        ),
      ),
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const CustomOrangeCarrotImg(),
                const SignUpTextsSection(),
                const CustomSignUpTextField(),
                const CustomSignUpButtons(),
                CustomButton(
                  descriptionButtonTxt: 'Sign in',
                  onPressed: () {},
                ),
                const LoginButtonNavigator(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
