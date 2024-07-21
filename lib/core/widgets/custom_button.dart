import 'package:flutter/material.dart';
import 'package:nectar_app/constants.dart';
import 'package:nectar_app/core/utils/styles.dart';

class CustomButton extends StatelessWidget {
  final String descriptionButtonTxt;
  final Function() onPressed;
  final Color? color;
  const CustomButton({
    super.key,
    required this.descriptionButtonTxt,
    required this.onPressed,
    this.color = commonColor,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        backgroundColor: color,
        fixedSize: Size(MediaQuery.of(context).size.width * 0.85, 70),
      ),
      child: Text(
        descriptionButtonTxt,
        style: Styles.textStyle20.copyWith(
          color: color == commonColor ? Colors.white : Colors.black,
        ),
      ),
    );
  }
}
