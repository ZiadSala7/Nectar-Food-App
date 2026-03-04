import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:nectar_app/core/utils/app_images.dart';
import 'package:nectar_app/core/utils/app_routers.dart';
import 'package:nectar_app/core/utils/styles.dart';

class ResetPasswordAcceptedViewBody extends StatelessWidget {
  const ResetPasswordAcceptedViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);

    return GestureDetector(
      onTap: () {
        GoRouter.of(context).pushReplacement(AppRouters.loginView);
      },
      child: SafeArea(
        child: SizedBox(
          height: size.height,
          width: size.width,
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: size.height * 0.1,
                ),
                SizedBox(
                  height: size.height * 0.28,
                  width: size.width * 0.5,
                  child: const Image(
                    image: AssetImage(AppImages.congratulationImg),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Text(
                  'Congratulations',
                  textAlign: TextAlign.center,
                  style: Styles.textStyle50
                      .copyWith(color: Colors.black, fontSize: 34),
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  'Your changed password is successful.\nWelcome to our app.',
                  textAlign: TextAlign.center,
                  style: Styles.textStyle14.copyWith(
                    color: Colors.black,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
