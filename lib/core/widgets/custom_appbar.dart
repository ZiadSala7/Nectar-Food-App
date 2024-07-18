import 'package:flutter/material.dart';
import 'package:nectar_app/constants.dart';
import 'package:nectar_app/core/utils/styles.dart';
import 'package:nectar_app/core/widgets/custom_flexible_spacer_appbar.dart';

AppBar customAppBar(String appBarTitle) {
  return AppBar(
    flexibleSpace: const CustomFlexibleSpacerAppBar(),
    automaticallyImplyLeading: false,
    title: Text(
      appBarTitle,
      style: Styles.textStyle25.copyWith(
        color: Colors.black,
        fontFamily: alef,
      ),
    ),
    centerTitle: true,
  );
}
