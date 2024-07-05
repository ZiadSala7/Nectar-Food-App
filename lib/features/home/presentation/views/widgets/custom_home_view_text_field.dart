import 'package:flutter/material.dart';
import 'package:nectar_app/constants.dart';

class CustomHomeViewTextField extends StatelessWidget {
  const CustomHomeViewTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: commonColor,
      decoration: InputDecoration(
        fillColor: backgroundColor,
        filled: true,
        prefixIcon: const Icon(Icons.search),
        hintText: 'Search Store',
        enabledBorder: outlineBorderMethod(),
        focusedBorder: outlineBorderMethod(),
      ),
    );
  }

  OutlineInputBorder outlineBorderMethod() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(15),
      borderSide: BorderSide.none,
    );
  }
}
