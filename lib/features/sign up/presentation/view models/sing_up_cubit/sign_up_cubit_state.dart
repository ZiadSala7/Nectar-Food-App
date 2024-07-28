import 'package:nectar_app/features/sign%20up/data/models/sign_up_model.dart';

abstract class SignUpCubitState {}

class SignUpInitialState extends SignUpCubitState {}

class SignUpLoadingState extends SignUpCubitState {}

class SignUpSuccessState extends SignUpCubitState {
  final SignUpModel signUpModel;

  SignUpSuccessState({
    required this.signUpModel,
  });
}

class SignUpFailureState extends SignUpCubitState {
  final String errMessage;

  SignUpFailureState({required this.errMessage});
}
