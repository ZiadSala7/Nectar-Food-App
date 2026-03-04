import 'package:flutter/material.dart';
import 'package:nectar_app/core/widgets/custom_background_box_decoration_img.dart';
import 'package:nectar_app/core/widgets/custom_orange_carrot_img.dart';
import 'package:nectar_app/features/login/presentation/views/widgets/buttons_section.dart';
import 'package:nectar_app/features/login/presentation/views/widgets/text_field_section.dart';
import 'package:nectar_app/features/login/presentation/views/widgets/text_section.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: backgroundBoxDecorationImg(),
      child: SafeArea(
        child: SingleChildScrollView(
          child: const Padding(
            padding: EdgeInsets.all(12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                CustomOrangeCarrotImg(),
                TextSection(),
                SizedBox(
                  height: 30,
                ),
                TextFieldSection(),
                SizedBox(
                  height: 15,
                ),
                ButtonsSection(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
