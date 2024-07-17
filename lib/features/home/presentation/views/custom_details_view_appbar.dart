import 'package:flutter/material.dart';

AppBar customDetailsViewAppBar() {
  return AppBar(
    flexibleSpace: FlexibleSpaceBar(
      background: Container(
        color: const Color(0xffF2F3F2),
      ),
    ),
    backgroundColor: const Color(0xffF2F3F2),
    actions: [
      IconButton(
        onPressed: () {},
        icon: const Icon(Icons.output),
      ),
    ],
  );
}
