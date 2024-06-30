import 'package:flutter/material.dart';
import 'package:nectar_app/core/utils/styles.dart';

class TextSection extends StatelessWidget {
  const TextSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Login',
          textAlign: TextAlign.start,
          style: Styles.textStyle20.copyWith(
            color: Colors.black,
            fontSize: 30,
            fontWeight: FontWeight.w500,
          ),
        ),
        const Text(
          'Enter your emails and password',
          textAlign: TextAlign.start,
          style: Styles.textStyle14,
        ),
      ],
    );
  }
}
