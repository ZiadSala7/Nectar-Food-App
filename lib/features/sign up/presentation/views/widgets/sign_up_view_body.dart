import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:nectar_app/core/utils/app_routers.dart';
import 'package:nectar_app/core/widgets/custom_button.dart';
import 'package:nectar_app/core/widgets/custom_orange_carrot_img.dart';
import 'package:nectar_app/core/widgets/custom_scaffold_messenger.dart';
import 'package:nectar_app/features/sign%20up/data/models/sign_up_controllers.dart';
import 'package:nectar_app/features/sign%20up/presentation/view%20models/sing_up_cubit/sign_up_cubit.dart';
import 'package:nectar_app/features/sign%20up/presentation/view%20models/sing_up_cubit/sign_up_cubit_state.dart';
import 'package:nectar_app/features/sign%20up/presentation/views/widgets/custom_sign_up_texts.dart';
import 'package:nectar_app/features/sign%20up/presentation/views/widgets/custom_text_field_signup_section.dart';
import 'package:nectar_app/features/sign%20up/presentation/views/widgets/login_button_navigator.dart';
import 'package:nectar_app/features/sign%20up/presentation/views/widgets/sign_up_texts_section.dart';

class SignUpViewBody extends StatelessWidget {
  const SignUpViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SignUpCubit, SignUpCubitState>(
      listener: (context, state) {
        if (state is SignUpSuccessState) {
          scaffoldMessenger(context, "Successful registering");
          GoRouter.of(context).pushReplacement(AppRouters.loginView);
        } else {
          if (state is SignUpFailureState) {
            scaffoldMessenger(context, state.errMessage);
          }
        }
      },
      builder: (context, state) {
        return Form(
          key: SignUpControllers.signUpFormKey,
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const CustomOrangeCarrotImg(
                    mediaSize: 0.15,
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  const SignUpTextsSection(),
                  const CustomSignUpTextField(),
                  const CustomSignUpPrivacyTexts(),
                  const SizedBox(
                    height: 20,
                  ),
                  state is! SignUpLoadingState
                      ? CustomButton(
                          descriptionButtonTxt: 'Sign in',
                          onPressed: () async {
                            if (SignUpControllers.signUpFormKey.currentState!
                                    .validate() &&
                                SignUpControllers.isNotEmpty()) {
                              await BlocProvider.of<SignUpCubit>(context)
                                  .signUp();
                            }
                          },
                        )
                      : const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 160),
                          child: CircularProgressIndicator(),
                        ),
                  const LoginButtonNavigator(),
                ],
              ),
            ),
          ),
        );
      },
    );
    //   child:  // );
  }
}
