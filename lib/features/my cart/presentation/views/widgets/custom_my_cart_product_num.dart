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
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          height: 38,
          width: 34,
          decoration: boxDecorationMethodCart(),
          child: IconButton(
            onPressed: () {
              setState(() {
                cnt > 0 ? cnt-- : cnt = cnt;
              });
            },
            icon: const Padding(
              padding: EdgeInsets.only(bottom: 20),
              child: Icon(
                Icons.minimize_sharp,
                size: 16,
              ),
            ),
          ),
        ),
        const SizedBox(
          width: 8,
        ),
        Center(
          child: Text(
            cnt.toString(),
            style: Styles.textStyle20.copyWith(
              color: Colors.black,
            ),
          ),
        ),
        const SizedBox(
          width: 8,
        ),
        Container(
          height: 38,
          width: 34,
          decoration: boxDecorationMethodCart(),
          child: IconButton(
            onPressed: () {
              setState(() {
                cnt++;
              });
            },
            icon: const Icon(
              Icons.add,
              size: 16,
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
