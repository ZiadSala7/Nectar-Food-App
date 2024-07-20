import 'package:flutter/material.dart';

import '../../../../../constants.dart';
import '../../../../../core/utils/styles.dart';

class CustomChosenFilteringItem extends StatefulWidget {
  final String label;
  const CustomChosenFilteringItem({super.key, required this.label});

  @override
  State<CustomChosenFilteringItem> createState() =>
      _CustomChosenFilteringItemState();
}

class _CustomChosenFilteringItemState extends State<CustomChosenFilteringItem> {
  bool isClicked = false;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          onPressed: () {
            setState(() {
              isClicked = !isClicked;
            });
          },
          icon: !isClicked
              ? const Icon(
                  Icons.check_box_outline_blank,
                  size: 25,
                )
              : const Icon(
                  Icons.check_box_rounded,
                  size: 25,
                  color: commonColor,
                ),
        ),
        Text(
          widget.label,
          style: Styles.textStyle16.copyWith(
            color: isClicked ? commonColor : Colors.black,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }
}
