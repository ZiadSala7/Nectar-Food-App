import 'package:flutter/material.dart';
import 'package:nectar_app/core/utils/styles.dart';

class TextButtonLogin extends StatelessWidget {
  final Color color;
  final String descriptionTxt;
  const TextButtonLogin(
      {super.key, required this.color, required this.descriptionTxt});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      child: Text(
        descriptionTxt,
        style: Styles.textStyle14.copyWith(
          color: color,
        ),
      ),
    );
  }
}
