import 'package:flutter/material.dart';
import 'package:nectar_app/constants.dart';
import 'package:nectar_app/core/utils/styles.dart';

class CustomCartProductNum extends StatefulWidget {
  const CustomCartProductNum({super.key});

  @override
  State<CustomCartProductNum> createState() => _CustomCartProductNumState();
}

class _CustomCartProductNumState extends State<CustomCartProductNum> {
  int cnt = 0;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Container(
          height: 45,
          width: 45,
          decoration: boxDecorationMethodCart(),
          child: IconButton(
            onPressed: () {
              setState(() {
                cnt > 0 ? cnt-- : cnt = cnt;
              });
            },
            icon: const Icon(
              Icons.minimize_rounded,
            ),
          ),
        ),
        Center(
          child: Text(
            cnt.toString(),
            style: Styles.textStyle20.copyWith(
              color: Colors.black,
            ),
          ),
        ),
        Container(
          height: 45,
          width: 45,
          decoration: boxDecorationMethodCart(),
          child: IconButton(
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
        ),
      ],
    );
  }

  BoxDecoration boxDecorationMethodCart() {
    return BoxDecoration(
      borderRadius: BorderRadius.circular(15),
      border: Border.all(
        width: 1,
        color: cardBorder,
      ),
    );
  }
}
