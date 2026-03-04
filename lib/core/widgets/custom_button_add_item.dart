import 'package:flutter/material.dart';
import 'package:nectar_app/constants.dart';

class CustomButtonAddItem extends StatelessWidget {
  const CustomButtonAddItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context).width < 360 ? 40.0 : 46.0;

    return Container(
      height: size,
      width: size,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(14),
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
