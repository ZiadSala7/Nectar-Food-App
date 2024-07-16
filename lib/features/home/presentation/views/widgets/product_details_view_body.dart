import 'package:flutter/material.dart';
import 'package:nectar_app/constants.dart';
import 'package:nectar_app/core/utils/styles.dart';
import 'package:nectar_app/core/widgets/custom_num_of_product.dart';
import 'package:nectar_app/core/widgets/custom_product_details_text.dart';
import 'package:nectar_app/features/home/presentation/views/widgets/five_stars_widget.dart';
import 'package:nectar_app/features/home/presentation/views/widgets/nutritions_widget.dart';

class ProductDetailsViewBody extends StatelessWidget {
  const ProductDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Fresh Apples',
                style: Styles.textStyle30.copyWith(
                  fontFamily: alef,
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.favorite_border_outlined),
              )
            ],
          ),
          Text(
            '1Kg, priced',
            style: Styles.textStyle18.copyWith(
              color: greyColor,
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          const CustomNumOfProduct(),
          const SizedBox(
            height: 20,
          ),
          const Divider(
            thickness: .5,
          ),
          const ProductDetailsText(
            title: '  Product Details',
            description: desc,
          ),
          const Divider(
            thickness: .7,
          ),
          const ProductDetailsText(
            title: '  Nutritions',
            description: desc,
            widget: NutritionsWidget(),
          ),
          const Divider(
            thickness: .5,
          ),
          const ProductDetailsText(
            title: '  Review',
            description: desc,
            widget: FiveStarsWidget(),
          ),
        ],
      ),
    );
  }
}
