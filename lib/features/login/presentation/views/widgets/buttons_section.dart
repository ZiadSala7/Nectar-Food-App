import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:nectar_app/constants.dart';
import 'package:nectar_app/core/utils/app_routers.dart';
import 'package:nectar_app/core/utils/styles.dart';
import 'package:nectar_app/core/widgets/custom_button.dart';
import 'package:nectar_app/core/widgets/custom_scaffold_messenger.dart';
import 'package:nectar_app/core/widgets/text_button.dart';
import 'package:nectar_app/features/login/data/model/login_controllers.dart';
import 'package:nectar_app/features/login/presentation/view%20models/login_cubit/login_cubit.dart';
import 'package:nectar_app/features/login/presentation/view%20models/login_cubit/login_cubit_states.dart';

class ButtonsSection extends StatelessWidget {
  const ButtonsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LoginCubit, LoginCubitStates>(
      listener: (context, state) {
        if (state is LoginCubitStateFailure) {
          scaffoldMessenger(context, state.errMessage);
        } else if (state is LoginCubitStateSuccess) {
          scaffoldMessenger(context, "Welcome broo");
          LoginControllers.clear();
        }
      },
      builder: (context, state) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Align(
              alignment: Alignment.centerRight,
              child: TextButtonLogin(
                color: commonColor,
                descriptionTxt: 'Forget password ?',
                onPressed: () {
                  GoRouter.of(context).push(AppRouters.forgetPasswordView);
                },
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            state is! LoginCubitStateLoading
                ? CustomButton(
                    descriptionButtonTxt: 'Log in',
                    onPressed: () async {
                      // GoRouter.of(context).push(AppRouters.appView);
                      if (LoginControllers.isNotEmpty()) {
                        await BlocProvider.of<LoginCubit>(context).login();
                      } else {
                        scaffoldMessenger(
                            context, 'Check your email and password');
                      }
                    },
                  )
                : const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 160),
                    child: CircularProgressIndicator(),
                  ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  r'Don’t have an account?',
                  style: Styles.textStyle16,
                ),
                TextButtonLogin(
                  color: commonColor,
                  descriptionTxt: 'Sign up',
                  onPressed: () {
                    GoRouter.of(context).push(AppRouters.signUpView);
                  },
                ),
              ],
            ),
          ],
        );
      },
    );
  }
}
