import 'package:flutter/material.dart';
import 'package:nectar_app/constants.dart';
import 'package:nectar_app/core/utils/styles.dart';

class CustomShowModalBottomSheetTexts extends StatelessWidget {
  const CustomShowModalBottomSheetTexts({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Code verification',
          style: Styles.textStyle30,
        ),
        const SizedBox(
          height: 20,
        ),
        Text(
          'Enter the code that was sent to your email \naddress ',
          style: Styles.textStyle16.copyWith(
            color: greyColor,
          ),
        ),
        const SizedBox(
          height: 40,
        ),
        const Text(
          'Enter the 6 digits code',
          style: Styles.textStyle20,
        ),
        const SizedBox(
          height: 40,
        ),
      ],
    );
  }
}
