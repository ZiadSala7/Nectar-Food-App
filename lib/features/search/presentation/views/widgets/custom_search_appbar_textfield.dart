import 'package:flutter/material.dart';
import 'package:nectar_app/constants.dart';
import 'package:nectar_app/features/search/presentation/views/widgets/outline_input_border_method.dart';

AppBar customSearchViewAppBar() {
  return AppBar(
    flexibleSpace: Container(
      color: Colors.white,
    ),
    actions: [
      IconButton(
        onPressed: () {},
        icon: const Icon(Icons.drag_indicator_sharp),
      ),
    ],
    automaticallyImplyLeading: false,
    title: TextField(
      cursorColor: commonColor,
      decoration: InputDecoration(
          prefixIcon: const Icon(Icons.search),
          hintText: 'Search Store',
          enabledBorder: outlineInputBorderMethod(),
          focusedBorder: outlineInputBorderMethod(),
          filled: true,
          fillColor: backgroundColor,
          suffixIcon: IconButton(
            onPressed: () {},
            icon: const Icon(Icons.dangerous_outlined),
          )),
    ),
  );
}
