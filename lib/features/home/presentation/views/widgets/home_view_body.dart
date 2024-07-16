import 'package:flutter/material.dart';
import 'package:nectar_app/core/utils/app_images.dart';
import 'package:nectar_app/features/home/presentation/views/widgets/custom_best_selling_section.dart';
import 'package:nectar_app/features/home/presentation/views/widgets/custom_carousel_slider.dart';
import 'package:nectar_app/features/home/presentation/views/widgets/custom_exclusive_offer_section.dart';
import 'package:nectar_app/features/home/presentation/views/widgets/custom_groceries_section.dart';
import 'package:nectar_app/features/home/presentation/views/widgets/custom_home_view_text_section.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          CustomCarouselSlider(
            items: [
              Image.asset(
                AppImages.freshVegetables,
              ),
              Image.asset(
                AppImages.freshVegetables,
              ),
              Image.asset(
                AppImages.freshVegetables,
              ),
            ],
            height: 130,
          ),
          const SizedBox(
            height: 20,
          ),
          CustomHomeViewTextSection(
            firstTxt: 'Exclusive Offer',
            onTap: () {},
          ),
          const SizedBox(
            height: 10,
          ),
          const CustomExclusiveOfferSection(),
          const SizedBox(
            height: 20,
          ),
          CustomHomeViewTextSection(
            firstTxt: 'Best Selling',
            onTap: () {},
          ),
          const SizedBox(
            height: 10,
          ),
          const CustomBestSellingSection(),
          const SizedBox(
            height: 20,
          ),
          CustomHomeViewTextSection(
            firstTxt: 'Groceries',
            onTap: () {},
          ),
          const SizedBox(
            height: 10,
          ),
          const CustomGroceriesSection(),
        ],
      ),
    );
  }
}
