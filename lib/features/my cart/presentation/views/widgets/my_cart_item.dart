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
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image.asset(
              AppImages.apple,
              width: 130,
            ),
            const MyCartListTile(),
            const SizedBox(
              width: 40,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.close),
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  r'$4.99',
                  style: Styles.textStyle20.copyWith(
                    color: Colors.black,
                  ),
                )
              ],
            ),
          ],
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
