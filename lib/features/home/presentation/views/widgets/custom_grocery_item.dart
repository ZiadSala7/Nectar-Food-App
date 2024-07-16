import 'package:flutter/material.dart';
import 'package:nectar_app/core/utils/app_images.dart';
import 'package:nectar_app/core/utils/styles.dart';

class CustomGroceryItem extends StatelessWidget {
  const CustomGroceryItem({
    super.key,
    required this.img,
    required this.txt,
    required this.color,
  });

  final String img;
  final String txt;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      margin: const EdgeInsets.only(right: 15),
      width: 250,
      decoration: BoxDecoration(
        color: const Color(0xffFEF1E4),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Image.asset(
            AppImages.pulses,
            width: 75,
            height: 75,
          ),
          const SizedBox(
            width: 15,
          ),
          Text(
            'Pulses',
            style: Styles.textStyle20.copyWith(
              color: Colors.black,
            ),
          )
        ],
      ),
    );
  }
}
