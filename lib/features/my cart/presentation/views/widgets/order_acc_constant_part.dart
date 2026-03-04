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
    final size = MediaQuery.sizeOf(context);

    return Column(
      children: [
        SizedBox(
          height: size.height * 0.12,
        ),
        Image.asset(
          AppImages.orderAcc,
          width: size.width * 0.72,
          height: size.width * 0.64,
        ),
        const SizedBox(
          height: 24,
        ),
        Text(
          'Your Order has been\naccepted',
          textAlign: TextAlign.center,
          style: Styles.textStyle30.copyWith(),
        ),
        const SizedBox(
          height: 16,
        ),
        Text(
          'Your items have been placed and are on\ntheir way to being processed',
          textAlign: TextAlign.center,
          style: Styles.textStyle16.copyWith(
            color: greyColor,
          ),
        ),
      ],
    );
  }
}
