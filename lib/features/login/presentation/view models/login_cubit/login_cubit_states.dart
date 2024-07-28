import 'package:nectar_app/core/errors/auth_model.dart';

abstract class LoginCubitStates {}

class LoginCubitStateInitial extends LoginCubitStates {}

class LoginCubitStateLoading extends LoginCubitStates {}

class LoginCubitStateFailure extends LoginCubitStates {
  final String errMessage;

  LoginCubitStateFailure({required this.errMessage});
}

class LoginCubitStateSuccess extends LoginCubitStates {
  final AuthModel authModel;

  LoginCubitStateSuccess({required this.authModel});
}
