import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:nectar_app/constants.dart';
import 'package:nectar_app/core/utils/styles.dart';

class CustomVerificationTextField extends StatelessWidget {
  final TextEditingController controller;
  const CustomVerificationTextField({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 50,
      decoration: BoxDecoration(
        color: commonColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: TextField(
        controller: controller,
        cursorColor: Colors.white,
        style: Styles.textStyle16.copyWith(
          color: Colors.white,
        ),
        onChanged: (value) {
          value.length == 1 ? FocusScope.of(context).nextFocus() : null;
        },
        decoration: InputDecoration(
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        textAlign: TextAlign.center,
        inputFormatters: [
          LengthLimitingTextInputFormatter(1),
          FilteringTextInputFormatter.digitsOnly,
        ],
      ),
    );
  }
}
