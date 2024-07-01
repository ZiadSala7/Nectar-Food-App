import 'package:flutter/material.dart';
import 'package:nectar_app/core/utils/app_images.dart';

BoxDecoration backgroundBoxDecorationImg() {
  return const BoxDecoration(
    image: DecorationImage(
      image: AssetImage(AppImages.backgroundImg),
      fit: BoxFit.fitWidth,
    ),
  );
}
