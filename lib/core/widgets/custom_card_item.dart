import 'package:flutter/material.dart';
import 'package:nectar_app/constants.dart';
import 'package:nectar_app/core/utils/app_images.dart';
import 'package:nectar_app/core/utils/styles.dart';
import 'package:nectar_app/core/widgets/custom_iadded_item_button.dart';

class CustomCardItem extends StatelessWidget {
  final double height;
  const CustomCardItem({super.key, required this.height});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 6),
      margin: const EdgeInsets.symmetric(horizontal: 10),
      height: height * 0.28,
      width: MediaQuery.of(context).size.width / 2.33,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        border: Border.all(
          color: greyColor,
          width: 0.39,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 5,
          ),
          Center(
            child: Image.asset(
              AppImages.banana,
              width: 100,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            'Organic banana',
            style: Styles.textStyle20.copyWith(
              color: Colors.black,
              fontWeight: FontWeight.w600,
            ),
          ),
          const Text(
            '1k, Priceg',
            style: Styles.textStyle18,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  r'$4.99',
                  style: Styles.textStyle14.copyWith(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontFamily: playwriteNGModern,
                  ),
                ),
                const CustomItemAddButton(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
