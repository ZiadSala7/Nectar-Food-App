import 'package:flutter/material.dart';
import 'package:nectar_app/core/utils/styles.dart';
import 'package:nectar_app/features/my%20cart/presentation/views/widgets/custom_my_cart_product_num.dart';

class MyCartListTile extends StatelessWidget {
  const MyCartListTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Fresh Apples',
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: Styles.textStyle20.copyWith(
            color: Colors.black,
          ),
        ),
        const SizedBox(height: 4),
        const Text(
          '1Kg, Price',
          style: Styles.textStyle14,
        ),
        const SizedBox(height: 10),
        const CustomCartProductNum(),
      ],
    );
  }
}
