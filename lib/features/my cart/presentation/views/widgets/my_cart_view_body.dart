import 'package:flutter/material.dart';
import 'package:nectar_app/features/my%20cart/presentation/views/widgets/my_cart_item.dart';

class MyCartViewBody extends StatelessWidget {
  const MyCartViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: double.infinity,
      width: double.infinity,
      child: Column(
        children: [
          Expanded(
              child: ListView.builder(
            itemCount: 10,
            itemBuilder: (context, index) {
              return const MyCartItem();
            },
          )),
        ],
      ),
    );
  }
}
