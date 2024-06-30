import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:nectar_app/constants.dart';
import 'package:nectar_app/core/utils/app_images.dart';
import 'package:nectar_app/core/utils/app_routers.dart';
import 'package:nectar_app/core/utils/styles.dart';
import 'package:nectar_app/core/widgets/custom_button.dart';
import 'package:nectar_app/core/widgets/custom_orange_carrot_img.dart';
import 'package:nectar_app/core/widgets/text_button.dart';
import 'package:nectar_app/features/sign%20up/presentation/views/widgets/custom_text_field_signup_section.dart';
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
                const SizedBox(
                  height: 15,
                ),
                Column(
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
                ),
                CustomButton(
                  descriptionButtonTxt: 'Sign in',
                  onPressed: () {},
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Already have an account?',
                      style: Styles.textStyle16.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
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
            ),
          ),
        ],
      ),
    );
  }
}
