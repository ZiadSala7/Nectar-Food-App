import 'package:flutter/material.dart';
import 'package:nectar_app/core/widgets/custom_button.dart';
import 'package:nectar_app/features/forget%20password/presentation/views/widgets/custom_show_modal_texts.dart';
import 'package:nectar_app/features/forget%20password/presentation/views/widgets/row_verification_text_field.dart';

Future<dynamic> showModalButtomSheetMethod(BuildContext context) {
  return showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Container(
          padding: const EdgeInsets.all(15),
          height: MediaQuery.of(context).size.height / 1.2,
          width: MediaQuery.of(context).size.width,
          child: CustomScrollView(
            slivers: [
              const SliverToBoxAdapter(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 50,
                    ),
                    CustomShowModalBottomSheetTexts(),
                  ],
                ),
              ),
              const SliverToBoxAdapter(
                child: Column(
                  children: [
                    RowVerificationTextField(),
                    SizedBox(
                      height: 35,
                    ),
                  ],
                ),
              ),
              SliverToBoxAdapter(
                child: CustomButton(
                  descriptionButtonTxt: 'Send code',
                  onPressed: () {},
                ),
              ),
            ],
          ),
        );
      });
}
