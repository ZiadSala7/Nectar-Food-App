import 'package:flutter/material.dart';
import 'package:nectar_app/core/widgets/custom_background_box_decoration_img.dart';
import 'package:nectar_app/core/widgets/custom_button.dart';
import 'package:nectar_app/core/widgets/custom_orange_carrot_img.dart';
import 'package:nectar_app/features/sign%20up/presentation/views/widgets/custom_sign_up_texts.dart';
import 'package:nectar_app/features/sign%20up/presentation/views/widgets/custom_text_field_signup_section.dart';
import 'package:nectar_app/features/sign%20up/presentation/views/widgets/login_button_navigator.dart';
import 'package:nectar_app/features/sign%20up/presentation/views/widgets/sign_up_texts_section.dart';

class SignUpViewBody extends StatelessWidget {
  const SignUpViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        height: MediaQuery.of(context).size.height,
        padding: const EdgeInsets.all(10),
        decoration: backgroundBoxDecorationImg(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const CustomOrangeCarrotImg(
              mediaSize: 0.2,
            ),
            const SignUpTextsSection(),
            const CustomSignUpTextField(),
            const CustomSignUpPrivacyTexts(),
            const SizedBox(
              height: 20,
            ),
            CustomButton(
              descriptionButtonTxt: 'Sign in',
              onPressed: () {},
            ),
            const LoginButtonNavigator(),
          ],
        ),
      ),
    );
    //   child:  // );
  }
}
