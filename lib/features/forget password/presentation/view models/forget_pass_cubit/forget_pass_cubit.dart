import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nectar_app/features/forget%20password/data/repo/forget_password_repo_imple.dart';
import 'package:nectar_app/features/forget%20password/presentation/view%20models/forget_pass_cubit/forget_pass_cubit_states.dart';

class ForgetPassCubit extends Cubit<ForgetPassCubitStates> {
  ForgetPassCubit({required this.api}) : super(ForgetPassInitialState());
  final ForgetPasswordRepoImple api;

  sendEmail() async {
    emit(ForgetPassLoadingState());
    final response = await api.sendEmail();
    response.fold(
      (errMessage) => emit(
        ForgetPassFailureState(errMessage: errMessage),
      ),
      (successMessage) =>
          emit(ForgetPassSuccessState(successMessage: successMessage)),
    );
  }
}
