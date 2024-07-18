import 'package:flutter/material.dart';
import 'package:nectar_app/core/utils/styles.dart';
import 'package:nectar_app/features/my%20cart/presentation/views/widgets/custom_my_cart_product_num.dart';

class MyCartListTile extends StatelessWidget {
  const MyCartListTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 170,
      height: 130,
      child: ListTile(
        title: Text(
          'Fresh Apples',
          style: Styles.textStyle20.copyWith(
            color: Colors.black,
          ),
        ),
        subtitle: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '1Kg, Price',
              style: Styles.textStyle14,
            ),
            SizedBox(
              height: 20,
            ),
            CustomCartProductNum(),
          ],
        ),
      ),
    );
  }
}
