import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nectar_app/features/forget%20password/data/repo/forget_password_repo_imple.dart';
part 'reset_password_cubit_state.dart';

class ResetPasswordCubit extends Cubit<ResetPasswordCubitState> {
  ResetPasswordCubit(this.api) : super(ResetPasswordCubitInitial());
  final ForgetPasswordRepoImple api;

  Future resetPassword() async {
    emit(ResetPasswordCubitLoading());
    final response = await api.resetPassword();
    response.fold(
      (left) => emit(ResetPasswordCubitFailure()),
      (right) => emit(ResetPasswordCubitSuccess()),
    );
  }
}
