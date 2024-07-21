import 'package:flutter/material.dart';
import '../../../../../core/utils/app_images.dart';
import '../../../../../core/utils/styles.dart';
import 'custom_bottom_sheet_item.dart';

class BottomSheetItemsSection extends StatelessWidget {
  const BottomSheetItemsSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomBottomSheetItem(
          onPressed: () {},
          title: 'Delivery',
          widget: Text(
            'Select Method',
            style: Styles.textStyle18.copyWith(
              fontWeight: FontWeight.w500,
              color: Colors.black,
            ),
          ),
        ),
        const Divider(thickness: 0.5),
        CustomBottomSheetItem(
          onPressed: () {},
          title: 'Payment',
          widget: Image.asset(AppImages.creditCard),
        ),
        const Divider(thickness: 0.5),
        CustomBottomSheetItem(
          onPressed: () {},
          title: 'Promo Code',
          widget: Text(
            'Pick discount',
            style: Styles.textStyle18.copyWith(
              fontWeight: FontWeight.w500,
              color: Colors.black,
            ),
          ),
        ),
        const Divider(thickness: 0.5),
        CustomBottomSheetItem(
          onPressed: () {},
          title: 'Total Cost',
          widget: Text(
            r'$13.79',
            style: Styles.textStyle18.copyWith(
              fontWeight: FontWeight.w500,
              color: Colors.black,
            ),
          ),
        ),
        const Divider(thickness: 0.5),
      ],
    );
  }
}
