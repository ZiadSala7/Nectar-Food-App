import 'package:flutter/material.dart';
import 'package:nectar_app/core/utils/app_images.dart';
import 'package:nectar_app/core/utils/styles.dart';

class CustomFavouriteItem extends StatelessWidget {
  const CustomFavouriteItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 105,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: 300,
                height: 80,
                child: ListTile(
                  leading: Image.asset(
                    AppImages.apple,
                    width: 100,
                  ),
                  title: Text(
                    'Fresh Apples',
                    style: Styles.textStyle16.copyWith(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  subtitle: const Text(
                    '1Kg, Price',
                    style: Styles.textStyle14,
                  ),
                ),
              ),
              Row(
                children: [
                  Text(
                    r'$4.99',
                    style: Styles.textStyle16.copyWith(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.arrow_forward_ios_sharp,
                      size: 15,
                      color: Colors.black,
                    ),
                  ),
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
      ),
    );
  }
}
