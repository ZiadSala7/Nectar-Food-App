part of 'reset_password_cubit.dart';

@immutable
abstract class ResetPasswordCubitState {}

class ResetPasswordCubitInitial extends ResetPasswordCubitState {}

class ResetPasswordCubitLoading extends ResetPasswordCubitState {}

class ResetPasswordCubitFailure extends ResetPasswordCubitState {}

class ResetPasswordCubitSuccess extends ResetPasswordCubitState {}
