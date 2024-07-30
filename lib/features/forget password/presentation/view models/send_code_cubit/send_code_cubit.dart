import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nectar_app/features/forget%20password/data/repo/forget_password_repo_imple.dart';
import 'package:nectar_app/features/forget%20password/presentation/view%20models/send_code_cubit/send_code_cubit_states.dart';

class SendCodeCubit extends Cubit<SendCodeCubitStates> {
  SendCodeCubit(this.api) : super(SendCodeInitialState());
  final ForgetPasswordRepoImple api;

  Future sendCode(String code) async {
    emit(SendCodeLoadingState());
    final response = await api.sendCode(code: code);
    response.fold(
      (errMessage) => emit(
        SendCodeFailureState(errMessage: errMessage),
      ),
      (successMsg) => emit(
        SendCodeSuccessState(successMsg: successMsg),
      ),
    );
  }
}
