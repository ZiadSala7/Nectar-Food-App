import 'package:flutter/material.dart';
import 'package:nectar_app/constants.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return const TextField(
      cursorColor: commonColor,
      decoration: InputDecoration(
        border: UnderlineInputBorder(),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            color: commonColor,
          ),
        ),
      ),
    );
  }
}
