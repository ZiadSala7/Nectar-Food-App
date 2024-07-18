import 'package:flutter/material.dart';
import 'package:nectar_app/core/widgets/custom_flexible_spacer_appbar.dart';

AppBar customDetailsViewAppBar() {
  return AppBar(
    flexibleSpace: const CustomFlexibleSpacerAppBar(),
    backgroundColor: const Color(0xffF2F3F2),
    actions: [
      IconButton(
        onPressed: () {},
        icon: const Icon(Icons.output),
      ),
    ],
  );
}
