import 'package:flutter/material.dart';
import 'package:nectar_app/constants.dart';
import 'package:nectar_app/core/utils/styles.dart';

class CustomHomeViewTextSection extends StatelessWidget {
  final String firstTxt;
  final String secondTxt;
  const CustomHomeViewTextSection({
    super.key,
    required this.firstTxt,
    required this.secondTxt,
  });

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              firstTxt,
              style: Styles.textStyle30,
            ),
            GestureDetector(
              child: Text(
                secondTxt,
                style: Styles.textStyle20.copyWith(
                  color: commonColor,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
