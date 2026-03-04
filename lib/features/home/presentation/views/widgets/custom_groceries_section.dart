import 'package:flutter/material.dart';
import 'package:nectar_app/constants.dart';
import 'package:nectar_app/core/widgets/custom_card_item.dart';
import 'package:nectar_app/features/home/presentation/views/widgets/custom_grocery_item.dart';

class CustomGroceriesSection extends StatelessWidget {
  const CustomGroceriesSection({super.key});

  @override
  Widget build(BuildContext context) {
    final cardWidth = MediaQuery.sizeOf(context).width * 0.42;

    return Column(
      children: [
        SizedBox(
          height: 110,
          width: double.infinity,
          child: ListView.builder(
            padding: const EdgeInsets.all(10),
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
          height: 16,
        ),
        SizedBox(
          height: 250,
          width: double.infinity,
          child: ListView.builder(
            padding: const EdgeInsets.symmetric(horizontal: 5),
            scrollDirection: Axis.horizontal,
            itemCount: 6,
            itemBuilder: (context, index) => CustomCardItem(
              width: cardWidth,
              margin: const EdgeInsets.only(right: 12),
            ),
          ),
        ),
      ],
    );
  }
}
