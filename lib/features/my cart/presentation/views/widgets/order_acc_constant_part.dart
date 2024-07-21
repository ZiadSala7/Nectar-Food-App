import 'package:flutter/material.dart';

import '../../../../../constants.dart';
import '../../../../../core/utils/app_images.dart';
import '../../../../../core/utils/styles.dart';

class OrderAcceptedConstantPart extends StatelessWidget {
  const OrderAcceptedConstantPart({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 150,
        ),
        Image.asset(
          AppImages.orderAcc,
          width: 270,
          height: 240,
        ),
        const SizedBox(
          height: 60,
        ),
        Text(
          'Your Order has been \naccepted',
          textAlign: TextAlign.center,
          style: Styles.textStyle30.copyWith(
              // color: Colors.black,
              ),
        ),
        const SizedBox(
          height: 30,
        ),
        Text(
          'Your items has been placcd and is on \nit’s way to being processed',
          textAlign: TextAlign.center,
          style: Styles.textStyle16.copyWith(
            color: greyColor,
            // fontWeight: FontWeight.normal,
          ),
        ),
      ],
    );
  }
}
