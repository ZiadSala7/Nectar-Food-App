import 'package:flutter/material.dart';
import 'package:nectar_app/constants.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController? textEditingController;
  final IconButton? suffixIcon;
  const CustomTextField({
    super.key,
    this.suffixIcon,
    this.textEditingController,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: textEditingController,
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
