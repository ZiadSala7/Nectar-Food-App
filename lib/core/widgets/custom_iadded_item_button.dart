import 'package:flutter/material.dart';
import 'package:nectar_app/constants.dart';

class CustomItemAddButton extends StatelessWidget {
  const CustomItemAddButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 50,
      decoration: BoxDecoration(
        color: commonColor,
        borderRadius: BorderRadius.circular(15),
      ),
      child: TextButton(
        onPressed: () {},
        child: const Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
    );
  }
}
