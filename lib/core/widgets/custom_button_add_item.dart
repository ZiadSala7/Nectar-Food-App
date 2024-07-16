import 'package:flutter/material.dart';
import 'package:nectar_app/constants.dart';

class CustomButtonAddItem extends StatelessWidget {
  const CustomButtonAddItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 50,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: commonColor,
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
