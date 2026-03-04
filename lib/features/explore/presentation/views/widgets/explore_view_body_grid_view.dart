import 'package:flutter/material.dart';
import 'package:nectar_app/features/explore/data/kind_list.dart';
import 'package:nectar_app/features/explore/presentation/views/widgets/kind_of_product_card.dart';

class ExploreViewBodyGridView extends StatelessWidget {
  const ExploreViewBodyGridView({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: kinds.length,
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 220,
          crossAxisSpacing: 12,
          mainAxisSpacing: 12,
          childAspectRatio: 0.92,
        ),
        itemBuilder: (context, index) {
          return KindOfProductCard(
            kindName: kinds[index]['name'],
            img: kinds[index]['img'],
            color: kinds[index]['color'],
            borderColor: kinds[index]['color2'],
          );
        });
  }
}
