import 'package:flutter/material.dart';
import 'package:nectar_app/core/utils/styles.dart';

class CustomShowModalBottomSheetTexts extends StatelessWidget {
  const CustomShowModalBottomSheetTexts({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Reset Password',
          style: Styles.textStyle50.copyWith(
            fontSize: 30,
            fontWeight: FontWeight.w500,
            color: Colors.black,
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Text(
          'Enter the code that was sent to your email \naddress ',
          style: Styles.textStyle16.copyWith(
            color: const Color.fromARGB(255, 117, 116, 116),
            fontWeight: FontWeight.w500,
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        Text(
          'Enter the 5 digits code',
          style: Styles.textStyle20.copyWith(
            color: const Color.fromARGB(255, 117, 116, 116),
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(
          height: 40,
        ),
      ],
    );
  }
}
