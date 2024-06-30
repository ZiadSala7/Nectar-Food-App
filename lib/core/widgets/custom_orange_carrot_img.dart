import 'package:flutter/material.dart';
import 'package:nectar_app/core/utils/app_images.dart';

class CustomOrangeCarrotImg extends StatelessWidget {
  const CustomOrangeCarrotImg({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.25,
      width: double.infinity,
      child: Image.asset(AppImages.orangeCarrot),
    );
  }
}
