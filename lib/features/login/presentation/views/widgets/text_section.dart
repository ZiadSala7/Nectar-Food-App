import 'package:flutter/material.dart';
import 'package:nectar_app/core/utils/styles.dart';

class TextSection extends StatelessWidget {
  const TextSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Login',
          style: Styles.textStyle30,
        ),
        SizedBox(
          height: 15,
        ),
        Text(
          'Enter your emails and password',
          style: Styles.textStyle14,
        ),
      ],
    );
  }
}
