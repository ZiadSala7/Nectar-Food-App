import 'package:nectar_app/core/errors/auth_model.dart';

abstract class SignUpCubitState {}

class SignUpInitialState extends SignUpCubitState {}

class SignUpLoadingState extends SignUpCubitState {}

class SignUpSuccessState extends SignUpCubitState {
  final AuthModel signUpModel;

  SignUpSuccessState({
    required this.signUpModel,
  });
}

class SignUpFailureState extends SignUpCubitState {
  final String errMessage;

  SignUpFailureState({required this.errMessage});
}
