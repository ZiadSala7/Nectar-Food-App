import 'package:flutter/material.dart';
import 'package:nectar_app/features/my%20cart/presentation/views/widgets/custom_my_cart_button.dart';
import 'package:nectar_app/features/my%20cart/presentation/views/widgets/my_cart_item.dart';

class MyCartViewBody extends StatelessWidget {
  const MyCartViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.8,
            child: Expanded(
              child: ListView.builder(
                itemCount: 10,
                itemBuilder: (context, index) {
                  return const MyCartItem();
                },
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: CustomMyCartButton(
              descriptionButtonTxt: 'Go to Checkout',
              onPressed: () {},
            ),
          ),
        ],
      ),
    );
  }
}
