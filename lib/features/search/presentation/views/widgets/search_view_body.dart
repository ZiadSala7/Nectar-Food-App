import 'package:flutter/material.dart';
import 'package:nectar_app/core/widgets/custom_card_item.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15, top: 20),
      child: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 20,
          crossAxisSpacing: 5,
          childAspectRatio: 2 / 2.7,
        ),
        itemCount: 12,
        itemBuilder: (context, index) {
          return const CustomCardItem();
        },
      ),
    );
  }
}
