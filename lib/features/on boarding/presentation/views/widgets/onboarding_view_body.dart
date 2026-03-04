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
    final size = MediaQuery.sizeOf(context);

    return Container(
      height: size.height,
      width: size.width,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage(AppImages.onBoarding),
          fit: BoxFit.fitWidth,
        ),
      ),
      child: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Image.asset(AppImages.whiteCarrot),
            const SizedBox(
              height: 16,
            ),
            Text(
              'Welcome \nto our store',
              textAlign: TextAlign.center,
              style: Styles.textStyle50.copyWith(
                fontFamily: playwriteNGModern,
                color: Colors.white,
                fontSize: size.width < 360 ? 38 : 46,
              ),
            ),
            const SizedBox(
              height: 16,
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
              height: size.height * 0.08,
            ),
          ],
        ),
      ),
    );
  }
}
