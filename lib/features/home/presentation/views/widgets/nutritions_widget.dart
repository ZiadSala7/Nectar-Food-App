import 'package:flutter/material.dart';
import 'package:nectar_app/constants.dart';
import 'package:nectar_app/core/utils/styles.dart';

class NutritionsWidget extends StatelessWidget {
  const NutritionsWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 25,
      width: 60,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: cardBorder,
      ),
      child: const Text(
        '100 gr',
        style: Styles.textStyle14,
        textAlign: TextAlign.center,
      ),
    );
  }
}
