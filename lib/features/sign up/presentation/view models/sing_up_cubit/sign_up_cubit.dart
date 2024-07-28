import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nectar_app/features/sign%20up/data/models/sign_up_controllers.dart';
import 'package:nectar_app/features/sign%20up/data/repo/sign_up_repo_imple.dart';
import 'package:nectar_app/features/sign%20up/presentation/view%20models/sing_up_cubit/sign_up_cubit_state.dart';

class SignUpCubit extends Cubit<SignUpCubitState> {
  SignUpCubit({required this.signUpRepoImple}) : super(SignUpInitialState());
  final SignUpRepoImple signUpRepoImple;

  signUp() async {
    emit(SignUpLoadingState());
    final response = await signUpRepoImple.signUp(
      username: SignUpControllers.userName.text,
      phoneNumber: SignUpControllers.phoneNumber.text,
      email: SignUpControllers.email.text,
      password: SignUpControllers.password.text,
      confirmPassword: SignUpControllers.confirmPassword.text,
    );
    response.fold(
      (error) => emit(
        SignUpFailureState(
          errMessage: error,
        ),
      ),
      (success) => emit(
        SignUpSuccessState(
          signUpModel: success,
        ),
      ),
    );
  }
}
