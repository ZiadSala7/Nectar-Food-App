import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:nectar_app/constants.dart';
import 'package:nectar_app/core/utils/app_images.dart';
import 'package:nectar_app/core/utils/app_routers.dart';
import 'package:nectar_app/core/utils/styles.dart';
import 'package:nectar_app/core/widgets/custom_button_add_item.dart';

class CustomCardItem extends StatelessWidget {
  final double? width;
  final EdgeInsetsGeometry margin;

  const CustomCardItem({
    super.key,
    this.width,
    this.margin = EdgeInsets.zero,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(AppRouters.detailsView);
      },
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        margin: margin,
        width: width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          border: Border.all(
            style: BorderStyle.solid,
            width: 2,
            color: cardBorder,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 8),
            Center(
              child: Image.asset(
                AppImages.apple,
                height: 85,
                width: 85,
              ),
            ),
            const SizedBox(height: 8),
            const Text(
              'Red Apple',
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: Styles.textStyle20,
            ),
            Text(
              '1Kg, priced',
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: Styles.textStyle16.copyWith(
                color: greyColor,
              ),
            ),
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Text(
                    r'$4.99',
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: Styles.textStyle20.copyWith(
                      color: Colors.black,
                    ),
                  ),
                ),
                const SizedBox(width: 8),
                const CustomButtonAddItem(),
              ],
            ),
            const SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}
