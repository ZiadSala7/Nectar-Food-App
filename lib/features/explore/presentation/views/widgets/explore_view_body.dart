import 'package:flutter/material.dart';
import 'package:nectar_app/features/explore/data/kind_list.dart';
import 'package:nectar_app/features/explore/presentation/views/widgets/kind_of_product_card.dart';

class ExploreViewBody extends StatelessWidget {
  const ExploreViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: kinds.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 15,
          mainAxisSpacing: 15,
          childAspectRatio: 2 / 2.1,
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
