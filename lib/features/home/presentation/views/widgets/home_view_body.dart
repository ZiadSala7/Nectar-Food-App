import 'package:flutter/material.dart';
import 'package:nectar_app/constants.dart';
import 'package:nectar_app/core/utils/app_images.dart';
import 'package:nectar_app/core/widgets/custom_card_item.dart';
import 'package:nectar_app/features/home/presentation/views/widgets/custom_best_selling_section.dart';
import 'package:nectar_app/features/home/presentation/views/widgets/custom_exclusive_offer_section.dart';
import 'package:nectar_app/features/home/presentation/views/widgets/custom_grocery_item.dart';
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
          Image.asset(AppImages.freshVegetables),
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

class CustomGroceriesSection extends StatelessWidget {
  const CustomGroceriesSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 450,
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(10),
            height: 120,
            width: double.infinity,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 6,
              itemBuilder: (context, index) => const CustomGroceryItem(
                img: '',
                txt: '',
                color: commonColor,
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 5),
            height: 260,
            width: double.infinity,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 6,
              itemBuilder: (context, index) => const CustomCardItem(),
            ),
          ),
        ],
      ),
    );
  }
}
