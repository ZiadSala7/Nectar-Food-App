import 'package:flutter/material.dart';

import '../../../../../core/utils/styles.dart';

class CustomGestureDetectorText extends StatelessWidget {
  final String txt;
  final Function() onTap;
  const CustomGestureDetectorText({
    super.key,
    required this.txt,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Text(
        txt,
        style: Styles.textStyle18.copyWith(
          fontWeight: FontWeight.w500,
          color: Colors.black,
        ),
      ),
    );
  }
}
