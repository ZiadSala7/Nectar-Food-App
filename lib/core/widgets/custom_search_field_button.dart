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
    final height = MediaQuery.sizeOf(context).width < 360 ? 52.0 : 58.0;

    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(AppRouters.searchView);
      },
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 16),
        padding: const EdgeInsets.symmetric(horizontal: 12),
        height: height,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: backgroundColor,
        ),
        child: Row(
          children: [
            const Icon(Icons.search),
            const SizedBox(
              width: 10,
            ),
            Expanded(
              child: Text(
                'Search Store',
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: Styles.textStyle18,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
