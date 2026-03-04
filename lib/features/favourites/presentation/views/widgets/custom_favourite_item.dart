import 'package:flutter/material.dart';
import 'package:nectar_app/core/utils/app_images.dart';
import 'package:nectar_app/core/utils/styles.dart';

class CustomFavouriteItem extends StatelessWidget {
  const CustomFavouriteItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 110,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Row(
                  children: [
                    SizedBox(
                      width: 70,
                      child: Image.asset(
                        AppImages.apple,
                        fit: BoxFit.contain,
                      ),
                    ),
                    const SizedBox(width: 10),
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Fresh Apples',
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: Styles.textStyle16.copyWith(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 4),
                          const Text(
                            '1Kg, Price',
                            style: Styles.textStyle14,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisSize: MainAxisSize.min,
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
