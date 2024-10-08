import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:nectar_app/constants.dart';
import 'package:nectar_app/core/utils/app_images.dart';
import 'package:nectar_app/core/utils/app_routers.dart';
import 'package:nectar_app/core/utils/styles.dart';
import 'package:nectar_app/core/widgets/custom_button.dart';
import 'package:shared_preferences/shared_preferences.dart';

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
              color: Colors.white,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          CustomButton(
            descriptionButtonTxt: 'Get Started',
            onPressed: () async {
              final prefs = await SharedPreferences.getInstance();
              prefs.setBool('onboarding', true);
              GoRouter.of(context).push(AppRouters.loginView);
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
