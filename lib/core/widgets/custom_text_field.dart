import 'package:flutter/material.dart';
import 'package:nectar_app/constants.dart';

// ignore: must_be_immutable
class CustomTextField extends StatelessWidget {
  IconButton? suffixIcon;
  CustomTextField({super.key, this.suffixIcon});

  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: commonColor,
      decoration: InputDecoration(
        suffix: suffixIcon,
        filled: false,
        border: const UnderlineInputBorder(),
        focusedBorder: const UnderlineInputBorder(
          borderSide: BorderSide(
            color: commonColor,
          ),
        ),
      ),
    );
  }
}
