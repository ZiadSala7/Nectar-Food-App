import 'package:flutter/material.dart';
import 'package:nectar_app/features/my%20cart/presentation/views/widgets/custom_my_cart_button.dart';
import 'package:nectar_app/features/my%20cart/presentation/views/widgets/my_cart_item.dart';

import 'dialog_method.dart';

class MyCartViewBody extends StatelessWidget {
  const MyCartViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(
          child: ListView.builder(
            itemCount: 10,
            itemBuilder: (context, index) {
              return const MyCartItem();
            },
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: SafeArea(
            top: false,
            child: CustomMyCartButton(
              descriptionButtonTxt: 'Go to Checkout',
              onPressed: () {
                myCartShowModalBottomMethod(context);
              },
            ),
          ),
        ),
      ],
    );
  }
}
