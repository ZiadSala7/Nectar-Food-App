import 'package:flutter/material.dart';
import 'package:nectar_app/constants.dart';

class CustomPasswordTextField extends StatefulWidget {
  final TextEditingController? textEditingController;
  final String? Function(String?)? validate;
  const CustomPasswordTextField({
    super.key,
    this.textEditingController,
    this.validate,
  });

  @override
  State<CustomPasswordTextField> createState() =>
      _CustomPasswordTextFieldState();
}

class _CustomPasswordTextFieldState extends State<CustomPasswordTextField> {
  bool isSecure = true;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autovalidateMode: AutovalidateMode.always,
      controller: widget.textEditingController,
      validator: widget.validate,
      obscureText: isSecure,
      decoration: InputDecoration(
        focusColor: Colors.white,
        border: const UnderlineInputBorder(),
        focusedBorder: const UnderlineInputBorder(
          borderSide: BorderSide(color: commonColor),
        ),
        suffixIcon: IconButton(
          onPressed: () {
            setState(() {
              isSecure = !isSecure;
            });
          },
          icon: isSecure
              ? const Icon(Icons.visibility_off)
              : const Icon(Icons.visibility),
        ),
      ),
    );
  }
}
