import 'package:flutter/material.dart';
import 'package:nectar_app/constants.dart';
import 'package:nectar_app/core/utils/styles.dart';

AppBar customDisplayProductAppBar() {
  return AppBar(
    flexibleSpace: Container(
      color: Colors.white,
    ),
    actions: [
      IconButton(
        onPressed: () {},
        icon: const Icon(Icons.share_rounded),
      ),
    ],
    title: Text(
      'Beverages',
      style: Styles.textStyle20.copyWith(
        color: Colors.black,
        fontFamily: alef,
      ),
    ),
    centerTitle: true,
  );
}
