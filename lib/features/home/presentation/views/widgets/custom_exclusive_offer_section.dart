import 'package:flutter/material.dart';
import 'package:nectar_app/core/widgets/custom_card_item.dart';

class CustomExclusiveOfferSection extends StatelessWidget {
  const CustomExclusiveOfferSection({super.key});

  @override
  Widget build(BuildContext context) {
    final cardWidth = MediaQuery.sizeOf(context).width * 0.42;

    return SizedBox(
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
    );
  }
}
