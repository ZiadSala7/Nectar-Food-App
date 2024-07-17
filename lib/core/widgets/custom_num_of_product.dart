import 'package:flutter/material.dart';
import 'package:nectar_app/constants.dart';
import 'package:nectar_app/core/utils/styles.dart';

class CustomNumOfProduct extends StatefulWidget {
  const CustomNumOfProduct({
    super.key,
  });

  @override
  State<CustomNumOfProduct> createState() => _CustomNumOfProductState();
}

class _CustomNumOfProductState extends State<CustomNumOfProduct> {
  int cnt = 0;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            IconButton(
              onPressed: () {
                setState(() {
                  cnt > 0 ? cnt-- : cnt = cnt;
                });
              },
              icon: const Icon(
                Icons.minimize_rounded,
              ),
            ),
            Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                border: Border.all(
                  width: 1,
                  color: cardBorder,
                ),
              ),
              child: Center(
                child: Text(
                  cnt.toString(),
                  style: Styles.textStyle20.copyWith(
                    color: Colors.black,
                  ),
                ),
              ),
            ),
            IconButton(
              onPressed: () {
                setState(() {
                  cnt++;
                });
              },
              icon: const Icon(
                Icons.add,
                color: commonColor,
              ),
            ),
          ],
        ),
        const Text(
          r'$4.99',
          style: Styles.textStyle25,
        )
      ],
    );
  }
}
