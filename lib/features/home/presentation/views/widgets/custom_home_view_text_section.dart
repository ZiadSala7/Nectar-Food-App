import 'package:flutter/material.dart';
import 'package:nectar_app/constants.dart';
import 'package:nectar_app/core/utils/styles.dart';

class CustomHomeViewTextSection extends StatelessWidget {
  final String firstTxt;
  final Function() onTap;
  const CustomHomeViewTextSection({
    super.key,
    required this.firstTxt,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            firstTxt,
            style: Styles.textStyle25.copyWith(
              fontFamily: alef,
            ),
          ),
          GestureDetector(
            onTap: onTap,
            child: Text(
              'See all',
              style: Styles.textStyle20.copyWith(
                color: commonColor,
                fontFamily: alef,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
