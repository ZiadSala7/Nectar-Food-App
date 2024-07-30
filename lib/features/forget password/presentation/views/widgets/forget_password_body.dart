import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nectar_app/core/widgets/custom_background_box_decoration_img.dart';
import 'package:nectar_app/core/widgets/custom_button.dart';
import 'package:nectar_app/core/widgets/custom_orange_carrot_img.dart';
import 'package:nectar_app/core/widgets/custom_scaffold_messenger.dart';
import 'package:nectar_app/core/widgets/custom_text_field.dart';
import 'package:nectar_app/features/forget%20password/data/models/forget_password_controllers.dart';
import 'package:nectar_app/features/forget%20password/presentation/view%20models/forget_pass_cubit/forget_pass_cubit.dart';
import 'package:nectar_app/features/forget%20password/presentation/view%20models/forget_pass_cubit/forget_pass_cubit_states.dart';
import 'package:nectar_app/features/forget%20password/presentation/views/widgets/custom_appbar.dart';
import 'package:nectar_app/features/forget%20password/presentation/views/widgets/send_code_show_modal_bottom_sheet.dart';
import 'package:nectar_app/features/forget%20password/presentation/views/widgets/text_section_forget_password.dart';
import 'package:nectar_app/features/sign%20up/presentation/views/widgets/validate_methods.dart';

class ForgetPasswordViewBody extends StatelessWidget {
  const ForgetPasswordViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ForgetPassCubit, ForgetPassCubitStates>(
      listener: (context, state) {
        if (state is ForgetPassFailureState) {
          scaffoldMessenger(context, state.errMessage);
        } else if (state is ForgetPassSuccessState) {
          scaffoldMessenger(context, state.successMessage);
        }
      },
      builder: (context, state) {
        return Form(
          key: ForgetPasswordControllers.forgetPassFormKey,
          child: SingleChildScrollView(
            child: Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              padding: const EdgeInsets.all(20),
              decoration: backgroundBoxDecorationImg(),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const CustomAppBar(),
                  const CustomOrangeCarrotImg(
                    mediaSize: .15,
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  const TextSectionForgetPasswordView(),
                  CustomTextField(
                    textEditingController: ForgetPasswordControllers.email,
                    validate: emailValidateMethod,
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  state is ForgetPassLoadingState
                      ? const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 150),
                          child: CircularProgressIndicator(),
                        )
                      : CustomButton(
                          descriptionButtonTxt: 'Continue',
                          onPressed: () async {
                            if (ForgetPasswordControllers
                                    .forgetPassFormKey.currentState!
                                    .validate() &&
                                ForgetPasswordControllers
                                    .email.text.isNotEmpty) {
                              await BlocProvider.of<ForgetPassCubit>(context)
                                  .sendEmail();
                              return showBottomSheet(
                                  context: context,
                                  builder: (context) {
                                    return const SendCodeShowModalBottomSheet();
                                  });
                            }
                          },
                        ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
