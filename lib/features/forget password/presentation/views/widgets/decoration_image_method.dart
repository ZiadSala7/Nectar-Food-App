import 'package:flutter/material.dart';
import 'package:nectar_app/core/utils/app_images.dart';

DecorationImage decorationImageMethod() {
  return const DecorationImage(
    image: AssetImage(AppImages.backgroundImg),
    fit: BoxFit.fill,
  );
}
