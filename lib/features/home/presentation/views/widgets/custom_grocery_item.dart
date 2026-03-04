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
    final width = MediaQuery.sizeOf(context).width.clamp(300, 500) * 0.58;

    return Container(
      padding: const EdgeInsets.all(10),
      margin: const EdgeInsets.only(right: 15),
      width: width.toDouble(),
      decoration: BoxDecoration(
        color: const Color(0xffFEF1E4),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Image.asset(
            AppImages.pulses,
            width: 64,
            height: 64,
          ),
          const SizedBox(
            width: 12,
          ),
          Expanded(
            child: Text(
              'Pulses',
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: Styles.textStyle20.copyWith(
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
