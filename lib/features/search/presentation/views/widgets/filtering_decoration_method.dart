import 'package:flutter/cupertino.dart';

BoxDecoration filterViewBodyBoxDecorationMethod() {
  return const BoxDecoration(
    color: Color.fromARGB(67, 158, 158, 158),
    borderRadius: BorderRadius.only(
      topLeft: Radius.circular(30),
      topRight: Radius.circular(30),
    ),
  );
}
