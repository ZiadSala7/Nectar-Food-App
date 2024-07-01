import 'package:flutter/material.dart';
import 'package:nectar_app/constants.dart';
import 'package:nectar_app/core/utils/styles.dart';

class TextButtonLogin extends StatelessWidget {
  final Color color;
  final String descriptionTxt;
  final Function() onPressed;
  const TextButtonLogin(
      {super.key,
      required this.color,
      required this.descriptionTxt,
      required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      onPressed: onPressed,
      child: Text(
        descriptionTxt,
        textAlign: TextAlign.start,
        style: Styles.textStyle16.copyWith(
          color: commonColor,
        ),
      ),
    );
  }
}
