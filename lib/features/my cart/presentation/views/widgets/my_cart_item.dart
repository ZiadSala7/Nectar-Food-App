import 'package:flutter/material.dart';
import 'package:nectar_app/core/utils/app_images.dart';
import 'package:nectar_app/core/utils/styles.dart';
import 'package:nectar_app/features/my%20cart/presentation/views/widgets/my_cart_list_tile.dart';

class MyCartItem extends StatelessWidget {
  const MyCartItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 120,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(width: 8),
              SizedBox(
                width: 84,
                child: Image.asset(
                  AppImages.apple,
                  fit: BoxFit.contain,
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              const Expanded(
                child: MyCartListTile(),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.close),
                  ),
                  Text(
                    r'$4.99',
                    style: Styles.textStyle20.copyWith(
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
              const SizedBox(width: 6),
            ],
          ),
        ),
        const Divider(
          indent: 15,
          endIndent: 15,
          thickness: 0.5,
        ),
      ],
    );
  }
}
