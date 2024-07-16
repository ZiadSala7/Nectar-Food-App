import 'package:flutter/material.dart';
import 'package:nectar_app/core/widgets/custom_card_item.dart';

class CustomBestSellingSection extends StatelessWidget {
  const CustomBestSellingSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      height: 260,
      width: double.infinity,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 6,
        itemBuilder: (context, index) => const CustomCardItem(),
      ),
    );
  }
}
