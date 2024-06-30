import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:nectar_app/core/utils/app_routers.dart';
import 'package:nectar_app/core/widgets/custom_button.dart';
import 'package:nectar_app/features/forget%20password/presentation/views/widgets/text_field_reset_password_section.dart';
import 'package:nectar_app/features/forget%20password/presentation/views/widgets/text_section_reset_password.dart';

Future<dynamic> resetPasswordShowModalButtomSheetMethod(BuildContext context) {
  return showModalBottomSheet(
      scrollControlDisabledMaxHeightRatio: BorderSide.strokeAlignOutside,
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
                    TextSectionResetPassword(),
                  ],
                ),
              ),
              const SliverToBoxAdapter(
                child: Column(
                  children: [
                    SizedBox(
                      height: 35,
                    ),
                    TextFieldResetPasswordSection(),
                  ],
                ),
              ),
              SliverToBoxAdapter(
                child: Column(
                  children: [
                    const SizedBox(
                      height: 50,
                    ),
                    CustomButton(
                      descriptionButtonTxt: 'Reset Password',
                      onPressed: () {
                        GoRouter.of(context)
                            .push(AppRouters.resetPasswordAcceptedView);
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      });
}
