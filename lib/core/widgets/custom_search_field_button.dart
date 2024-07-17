import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:nectar_app/constants.dart';
import 'package:nectar_app/core/utils/app_routers.dart';
import 'package:nectar_app/core/utils/styles.dart';

class CustomSearchFieldButton extends StatelessWidget {
  const CustomSearchFieldButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(AppRouters.searchView);
      },
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 20),
        padding: const EdgeInsets.symmetric(horizontal: 10),
        height: 60,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: backgroundColor,
        ),
        child: const Row(
          children: [
            Icon(Icons.search),
            SizedBox(
              width: 10,
            ),
            Text(
              'Search Store',
              style: Styles.textStyle18,
            ),
          ],
        ),
      ),
    );
  }
}
