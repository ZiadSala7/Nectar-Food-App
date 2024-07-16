import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:nectar_app/core/utils/app_images.dart';

class ProductDetailsViewBody extends StatelessWidget {
  const ProductDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Container(
          height: 350,
          width: double.infinity,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(30),
              bottomRight: Radius.circular(30),
            ),
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(AppImages.backgroundProduct),
            ),
          ),
          child: Image.asset(AppImages.apple),
        ),
      ],
    );
  }
}
