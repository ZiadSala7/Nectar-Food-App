import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:nectar_app/constants.dart';
import 'package:nectar_app/core/utils/app_images.dart';
import 'package:nectar_app/core/utils/app_routers.dart';
import 'package:nectar_app/features/search/presentation/views/widgets/outline_input_border_method.dart';

AppBar customSearchViewAppBar(BuildContext context) {
  return AppBar(
    flexibleSpace: Container(
      color: Colors.white,
    ),
    actions: [
      SizedBox(
        height: 50,
        width: 45,
        child: TextButton(
          onPressed: () {
            GoRouter.of(context).push(AppRouters.filterView);
          },
          child: Image.asset(AppImages.icon),
        ),
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
          icon: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: greyColor,
            ),
            child: const Icon(
              Icons.close,
              color: Colors.white,
              size: 16,
            ),
          ),
        ),
      ),
    ),
  );
}
