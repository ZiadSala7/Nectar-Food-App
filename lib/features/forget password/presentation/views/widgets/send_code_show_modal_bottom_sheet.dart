import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:nectar_app/core/widgets/custom_button.dart';
import 'package:nectar_app/core/widgets/custom_scaffold_messenger.dart';
import 'package:nectar_app/features/forget%20password/data/models/forget_password_controllers.dart';
import 'package:nectar_app/features/forget%20password/presentation/view%20models/send_code_cubit/send_code_cubit.dart';
import 'package:nectar_app/features/forget%20password/presentation/view%20models/send_code_cubit/send_code_cubit_states.dart';
import 'package:nectar_app/features/forget%20password/presentation/views/widgets/custom_box_decoration_method.dart';
import 'package:nectar_app/features/forget%20password/presentation/views/widgets/custom_show_modal_texts.dart';
import 'package:nectar_app/features/forget%20password/presentation/views/widgets/reset_password_bottom_sheet.dart';
import 'package:nectar_app/features/forget%20password/presentation/views/widgets/row_verification_text_field.dart';

class SendCodeShowModalBottomSheet extends StatelessWidget {
  const SendCodeShowModalBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SendCodeCubit, SendCodeCubitStates>(
      builder: (context, state) {
        return SingleChildScrollView(
          child: Container(
            height: MediaQuery.of(context).size.height / 1.65,
            width: MediaQuery.of(context).size.width,
            decoration: customBoxDecorationMethod(),
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const SizedBox(
                    height: 50,
                  ),
                  const CustomShowModalBottomSheetTexts(),
                  const RowVerificationTextField(),
                  const SizedBox(
                    height: 35,
                  ),
                  state is SendCodeLoadingState
                      ? const CircularProgressIndicator()
                      : CustomButton(
                          descriptionButtonTxt: 'Send code',
                          onPressed: () async {
                            String code = ForgetPasswordControllers.c1.text +
                                ForgetPasswordControllers.c2.text +
                                ForgetPasswordControllers.c3.text +
                                ForgetPasswordControllers.c4.text +
                                ForgetPasswordControllers.c5.text +
                                ForgetPasswordControllers.c6.text;
                            if (code.length == 6) {
                              await BlocProvider.of<SendCodeCubit>(context)
                                  .sendCode(code);

                              if (state is SendCodeFailureState) {
                                scaffoldMessenger(context, state.errMessage);
                              }
                            }
                          },
                        ),
                ],
              ),
            ),
          ),
        );
      },
      listener: (context, state) {
        if (state is SendCodeSuccessState) {
          scaffoldMessenger(context, state.successMsg);
          GoRouter.of(context).pop();
          showBottomSheet(
              context: context,
              builder: (context) {
                return const ResetPasswordBottomSheet();
              });
        }
      },
    );
  }
}
