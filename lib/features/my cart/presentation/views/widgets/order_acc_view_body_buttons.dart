import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/utils/app_routers.dart';
import '../../../../../core/widgets/custom_button.dart';

class OrderAcceptedViewBodyButtons extends StatelessWidget {
  const OrderAcceptedViewBodyButtons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomButton(
          descriptionButtonTxt: 'Track Order',
          onPressed: () {},
        ),
        CustomButton(
          descriptionButtonTxt: 'Back To Home',
          onPressed: () {
            GoRouter.of(context)
                .pushReplacement(AppRouters.appViewBottomNavigation);
          },
          color: Colors.white,
        ),
      ],
    );
  }
}
