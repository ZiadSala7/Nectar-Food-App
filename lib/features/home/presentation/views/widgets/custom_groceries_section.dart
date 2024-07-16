import 'package:flutter/material.dart';
import 'package:nectar_app/constants.dart';
import 'package:nectar_app/core/widgets/custom_card_item.dart';
import 'package:nectar_app/features/home/presentation/views/widgets/custom_grocery_item.dart';

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
