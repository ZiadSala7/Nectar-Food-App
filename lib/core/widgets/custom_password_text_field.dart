import 'package:flutter/material.dart';

class CustomPasswordTextField extends StatefulWidget {
  const CustomPasswordTextField({super.key});

  @override
  State<CustomPasswordTextField> createState() =>
      _CustomPasswordTextFieldState();
}

class _CustomPasswordTextFieldState extends State<CustomPasswordTextField> {
  bool isSecure = true;

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: isSecure,
      decoration: InputDecoration(
        border: const UnderlineInputBorder(),
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
