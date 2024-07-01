import 'package:flutter/material.dart';

BoxDecoration customBoxDecorationMethod() {
  return const BoxDecoration(
    borderRadius: BorderRadius.only(
      topLeft: Radius.circular(20),
      topRight: Radius.circular(20),
    ),
  );
}
