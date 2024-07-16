import 'package:flutter/material.dart';
import 'package:nectar_app/constants.dart';
import 'package:nectar_app/core/utils/styles.dart';

class ProductDetailsText extends StatefulWidget {
  final String title;
  final String description;
  final Widget? widget;
  const ProductDetailsText({
    super.key,
    required this.title,
    required this.description,
    this.widget,
  });

  @override
  State<ProductDetailsText> createState() => _ProductDetailsTextState();
}

class _ProductDetailsTextState extends State<ProductDetailsText> {
  bool isActive = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              widget.title,
              style: Styles.textStyle18.copyWith(
                fontFamily: alef,
                color: Colors.black,
              ),
            ),
            Row(
              children: [
                if (widget.widget != null) widget.widget!,
                IconButton(
                  onPressed: () {
                    setState(() {
                      isActive = !isActive;
                    });
                  },
                  icon: !isActive
                      ? const Icon(
                          Icons.arrow_forward_ios_sharp,
                          size: 20,
                        )
                      : const Icon(
                          Icons.keyboard_arrow_down,
                          size: 30,
                        ),
                ),
              ],
            ),
          ],
        ),
        Text(
          isActive ? widget.description : '',
          style: Styles.textStyle14,
          maxLines: 3,
        ),
      ],
    );
  }
}
