import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:nectar_app/core/utils/app_routers.dart';
import '../../../../../core/utils/styles.dart';
import '../../../../../core/widgets/custom_button.dart';
import 'custom_bottom_sheet_items_section.dart';
import 'custom_checkout_title_widget.dart';
import 'custom_gesture_detectore_text_section.dart';

Future myCartShowModalBottomMethod(BuildContext context) {
  return showModalBottomSheet(
    isScrollControlled: true,
    context: context,
    builder: (context) {
      final maxHeight = MediaQuery.sizeOf(context).height * 0.85;

      return SafeArea(
        child: AnimatedPadding(
          duration: const Duration(milliseconds: 200),
          padding: EdgeInsets.only(
            bottom: MediaQuery.viewInsetsOf(context).bottom,
          ),
          child: ConstrainedBox(
            constraints: BoxConstraints(maxHeight: maxHeight),
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(15),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    const CustomCheckoutTitleWidget(),
                    const SizedBox(
                      height: 16,
                    ),
                    const Divider(
                      thickness: 0.5,
                    ),
                    const BottomSheetItemsSection(),
                    const SizedBox(
                      height: 25,
                    ),
                    Text(
                      'By placing an order you agree to our',
                      style: Styles.textStyle18.copyWith(
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const CustomGestureDetectorTextSection(),
                    const SizedBox(
                      height: 20,
                    ),
                    CustomButton(
                      descriptionButtonTxt: 'Place Order',
                      onPressed: () {
                        GoRouter.of(context).push(AppRouters.orderAcceptedView);
                      },
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      );
    },
  );
}
