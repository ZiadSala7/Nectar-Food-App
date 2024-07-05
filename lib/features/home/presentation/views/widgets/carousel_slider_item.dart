import 'package:flutter/material.dart';
import 'package:nectar_app/constants.dart';
import 'package:nectar_app/core/utils/app_images.dart';

class CarouselSliderItem extends StatelessWidget {
  const CarouselSliderItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * 0.2,
      decoration: BoxDecoration(
        color: backgroundFreshVege,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Stack(
        children: [
          Positioned(
            right: 4,
            top: 2,
            child: Image.asset(AppImages.vegetablesStack),
          ),
          Positioned(
            top: 30,
            left: 30,
            width: 400,
            child: Image.asset(AppImages.freshVegeTitle),
          ),
          Positioned(
            bottom: 30,
            child: Image.asset(AppImages.vegetables),
          ),
          Positioned(
            bottom: 30,
            child: Image.asset(AppImages.vegetables),
          ),
          Positioned(
            right: 2,
            bottom: 2,
            child: Image.asset(AppImages.khass),
          ),
        ],
      ),
    );
  }
}
