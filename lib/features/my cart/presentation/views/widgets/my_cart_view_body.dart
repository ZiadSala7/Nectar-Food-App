import 'package:flutter/material.dart';
import 'package:nectar_app/constants.dart';
import 'package:nectar_app/core/utils/styles.dart';
import 'package:nectar_app/features/my%20cart/presentation/views/widgets/my_cart_item.dart';

class MyCartViewBody extends StatelessWidget {
  const MyCartViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: double.infinity,
      width: double.infinity,
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
            padding: const EdgeInsets.symmetric(horizontal: 10),
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

class CustomMyCartButton extends StatelessWidget {
  final String descriptionButtonTxt;
  final Function() onPressed;
  const CustomMyCartButton({
    super.key,
    required this.descriptionButtonTxt,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        backgroundColor: commonColor,
        fixedSize: Size(MediaQuery.of(context).size.width * 0.85, 70),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(
            width: 50,
          ),
          Text(
            descriptionButtonTxt,
            style: Styles.textStyle20.copyWith(
              color: Colors.white,
            ),
          ),
          Container(
            decoration: BoxDecoration(
              color: const Color(0xff489E67),
              borderRadius: BorderRadius.circular(5),
            ),
            child: Text(
              r' $200.00 ',
              textAlign: TextAlign.center,
              style: Styles.textStyle16.copyWith(
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
