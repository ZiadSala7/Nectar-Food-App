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
    final mediaWidth = MediaQuery.sizeOf(context).width;
    final buttonHeight = mediaWidth < 360 ? 58.0 : 66.0;

    return TextButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        backgroundColor: color,
        fixedSize: Size(mediaWidth * 0.85, buttonHeight),
      ),
      child: FittedBox(
        fit: BoxFit.scaleDown,
        child: Text(
          descriptionButtonTxt,
          style: Styles.textStyle20.copyWith(
            color: color == commonColor ? Colors.white : Colors.black,
          ),
        ),
      ),
    );
  }
}
