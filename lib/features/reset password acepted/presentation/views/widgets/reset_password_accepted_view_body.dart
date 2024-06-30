import 'package:flutter/material.dart';
import 'package:nectar_app/core/utils/app_images.dart';
import 'package:nectar_app/core/utils/styles.dart';

class ResetPasswordAcceptedViewBody extends StatelessWidget {
  const ResetPasswordAcceptedViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.12,
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.3,
            width: MediaQuery.of(context).size.width / 2,
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
            style:
                Styles.textStyle50.copyWith(color: Colors.black, fontSize: 40),
          ),
          const SizedBox(
            height: 30,
          ),
          Text(
            'Your change Password Is Success\nWelcome to our app',
            textAlign: TextAlign.center,
            style: Styles.textStyle14.copyWith(
              color: Colors.black,
              fontWeight: FontWeight.normal,
            ),
          ),
        ],
      ),
    );
  }
}
