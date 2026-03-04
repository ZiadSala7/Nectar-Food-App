import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:nectar_app/core/utils/app_routers.dart';
import 'package:nectar_app/core/utils/styles.dart';

class KindOfProductCard extends StatelessWidget {
  final String kindName;
  final String img;
  final Color color;
  final Color borderColor;
  const KindOfProductCard({
    super.key,
    required this.kindName,
    required this.img,
    required this.color,
    required this.borderColor,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(AppRouters.dislayProducts);
      },
      child: Container(
        decoration: BoxDecoration(
          color: color,
          border: Border.all(
            width: 1.5,
            strokeAlign: BorderSide.strokeAlignCenter,
            color: borderColor,
          ),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Flexible(
              child: Image.asset(
                img,
                width: 100,
                height: 70,
              ),
            ),
            Text(
              kindName,
              textAlign: TextAlign.center,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: Styles.textStyle20.copyWith(color: Colors.black),
            )
          ],
        ),
      ),
    );
  }
}
