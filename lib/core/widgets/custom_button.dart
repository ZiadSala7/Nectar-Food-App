import 'package:flutter/material.dart';
import 'package:nectar_app/constants.dart';
import 'package:nectar_app/core/utils/styles.dart';

class CustomButton extends StatelessWidget {
  final String descriptionButtonTxt;
  final Function() onPressed;
  const CustomButton({
    super.key,
    required this.descriptionButtonTxt,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        backgroundColor: commonColor,
        fixedSize: Size(MediaQuery.of(context).size.width * 0.85, 70),
      ),
      child: Text(
        descriptionButtonTxt,
        style: Styles.textStyle20.copyWith(
          color: Colors.white,
        ),
      ),
    );
  }
}
