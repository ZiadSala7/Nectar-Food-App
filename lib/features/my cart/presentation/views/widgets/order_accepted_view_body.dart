import 'package:flutter/material.dart';
import 'package:nectar_app/core/utils/app_images.dart';
import '../../../../../core/widgets/custom_background_box_decoration_img.dart';
import 'order_acc_constant_part.dart';
import 'order_acc_view_body_buttons.dart';

class OrderAcceptedViewBody extends StatelessWidget {
  const OrderAcceptedViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: backgroundBoxDecorationImg(
          img: AppImages.orderAccBackground, boxFit: BoxFit.cover),
      height: double.infinity,
      width: double.infinity,
      child: const Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          OrderAcceptedConstantPart(),
          OrderAcceptedViewBodyButtons(),
        ],
      ),
    );
  }
}
