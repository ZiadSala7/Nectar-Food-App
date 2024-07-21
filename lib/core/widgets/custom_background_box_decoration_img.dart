import 'package:flutter/material.dart';
import 'package:nectar_app/core/utils/app_images.dart';

BoxDecoration backgroundBoxDecorationImg(
    {String img = AppImages.backgroundImg, BoxFit boxFit = BoxFit.fitWidth}) {
  return BoxDecoration(
    image: DecorationImage(
      image: AssetImage(img),
      fit: boxFit,
    ),
  );
}
