import 'package:flutter/material.dart';
import 'package:nectar_app/core/utils/styles.dart';

class KindOfProductCard extends StatelessWidget {
  final String kindName;
  final String img;
  final Color color;
  final Color borderColor;
  const KindOfProductCard({
    super.key,
    required this.kindName,
    required this.img,
    required this.color,
    required this.borderColor,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        height: 180,
        width: 180,
        decoration: BoxDecoration(
          color: color,
          border: Border.all(
            width: 1.5,
            strokeAlign: BorderSide.strokeAlignCenter,
            color: borderColor,
          ),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              img,
              width: 111,
              height: 75,
            ),
            Text(
              kindName,
              textAlign: TextAlign.center,
              maxLines: 2,
              style: Styles.textStyle20.copyWith(color: Colors.black),
            )
          ],
        ),
      ),
    );
  }
}
