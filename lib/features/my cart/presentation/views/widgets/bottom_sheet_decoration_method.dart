import 'package:flutter/material.dart';

BoxDecoration bottomSheetDecorationMethod() {
  return const BoxDecoration(
    color: Color(0xffFFFFFF),
    borderRadius: BorderRadius.only(
      topLeft: Radius.circular(25),
      topRight: Radius.circular(25),
    ),
  );
}
