import 'package:flutter/material.dart';
import 'package:nectar_app/constants.dart';
import 'package:nectar_app/core/utils/app_images.dart';
import 'package:nectar_app/core/utils/styles.dart';
import 'package:nectar_app/core/widgets/custom_button.dart';
import 'package:nectar_app/features/login/presentation/views/login_view.dart';

class OnBoardingViewBody extends StatelessWidget {
  const OnBoardingViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage(AppImages.onBoarding),
          fit: BoxFit.fitWidth,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Image.asset(AppImages.whiteCarrot),
          const SizedBox(
            height: 20,
          ),
          Text(
            'Welcome \nto our store',
            textAlign: TextAlign.center,
            style: Styles.textStyle50.copyWith(
              fontFamily: playwriteNGModern,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          CustomButton(
            descriptionButtonTxt: 'Get Started',
            onPressed: () {
              Navigator.pushNamed(context, LoginView.id);
            },
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.1,
          ),
        ],
      ),
    );
  }
}
