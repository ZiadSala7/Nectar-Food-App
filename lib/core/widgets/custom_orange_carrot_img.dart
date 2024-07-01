import 'package:flutter/material.dart';
import 'package:nectar_app/core/utils/app_images.dart';

class CustomOrangeCarrotImg extends StatelessWidget {
  final double? mediaSize;
  const CustomOrangeCarrotImg({super.key, this.mediaSize});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: mediaSize == null
          ? MediaQuery.of(context).size.height * 0.21
          : MediaQuery.of(context).size.height * mediaSize!,
      width: double.infinity,
      child: Image.asset(AppImages.orangeCarrot),
    );
  }
}
