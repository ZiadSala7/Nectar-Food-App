import 'package:flutter/material.dart';
import 'package:nectar_app/core/utils/styles.dart';

class CustomBottomSheetItem extends StatelessWidget {
  final String title;
  final Widget widget;
  final Function() onPressed;
  const CustomBottomSheetItem({
    super.key,
    required this.title,
    required this.widget,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: Styles.textStyle20.copyWith(
            fontWeight: FontWeight.w500,
          ),
        ),
        Row(
          children: [
            widget,
            IconButton(
              onPressed: onPressed,
              icon: const Icon(
                Icons.arrow_forward_ios,
                size: 15,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
