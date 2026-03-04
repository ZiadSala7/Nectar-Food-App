import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:nectar_app/core/utils/app_routers.dart';
import 'package:nectar_app/core/widgets/custom_button.dart';
import 'package:nectar_app/features/forget%20password/data/models/forget_password_controllers.dart';
import 'package:nectar_app/features/forget%20password/presentation/view%20models/forget_pass_cubit/forget_pass_cubit.dart';
import 'package:nectar_app/features/forget%20password/presentation/view%20models/forget_pass_cubit/forget_pass_cubit_states.dart';
import 'package:nectar_app/features/forget%20password/presentation/view%20models/reset_password_cubit/reset_password_cubit.dart';
import 'package:nectar_app/features/forget%20password/presentation/views/widgets/custom_box_decoration_method.dart';
import 'package:nectar_app/features/forget%20password/presentation/views/widgets/text_field_reset_password_section.dart';
import 'package:nectar_app/features/forget%20password/presentation/views/widgets/text_section_reset_password.dart';

class ResetPasswordBottomSheet extends StatelessWidget {
  const ResetPasswordBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ForgetPassCubit, ForgetPassCubitStates>(
      builder: (context, state) {
        final maxHeight = MediaQuery.sizeOf(context).height * 0.85;

        return Form(
          key: ForgetPasswordControllers.resetPassFormKey,
          child: SafeArea(
            child: AnimatedPadding(
              duration: const Duration(milliseconds: 200),
              padding: EdgeInsets.only(
                bottom: MediaQuery.viewInsetsOf(context).bottom,
              ),
              child: ConstrainedBox(
                constraints: BoxConstraints(maxHeight: maxHeight),
                child: SingleChildScrollView(
                  child: Container(
                    padding: const EdgeInsets.all(15),
                    width: MediaQuery.of(context).size.width,
                    decoration: customBoxDecorationMethod(),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        const SizedBox(
                          height: 20,
                        ),
                        const TextSectionResetPassword(),
                        const SizedBox(
                          height: 25,
                        ),
                        const TextFieldResetPasswordSection(),
                        const SizedBox(
                          height: 30,
                        ),
                        state is ResetPasswordCubitLoading
                            ? const Center(child: CircularProgressIndicator())
                            : CustomButton(
                                descriptionButtonTxt: 'Reset Password',
                                onPressed: () async {
                                  if (ForgetPasswordControllers
                                      .resetPassFormKey.currentState!
                                      .validate()) {
                                    await BlocProvider.of<ResetPasswordCubit>(
                                            context)
                                        .resetPassword();

                                    GoRouter.of(context).push(
                                      AppRouters.resetPasswordAcceptedView,
                                    );
                                  }
                                },
                              ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
