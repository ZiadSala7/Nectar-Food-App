import 'package:flutter/material.dart';
import 'package:nectar_app/constants.dart';
import 'package:nectar_app/core/utils/styles.dart';
import 'package:nectar_app/core/widgets/custom_flexible_spacer_appbar.dart';

AppBar customMyCartAppBar() {
  return AppBar(
    flexibleSpace: const CustomFlexibleSpacerAppBar(),
    automaticallyImplyLeading: false,
    title: Text(
      'My Cart',
      style: Styles.textStyle25.copyWith(
        color: Colors.black,
        fontFamily: alef,
      ),
    ),
    centerTitle: true,
  );
}
