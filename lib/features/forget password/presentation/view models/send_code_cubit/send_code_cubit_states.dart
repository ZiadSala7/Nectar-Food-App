abstract class SendCodeCubitStates {}

class SendCodeInitialState extends SendCodeCubitStates {}

class SendCodeLoadingState extends SendCodeCubitStates {}

class SendCodeFailureState extends SendCodeCubitStates {
  final String errMessage;
  SendCodeFailureState({required this.errMessage});
}

class SendCodeSuccessState extends SendCodeCubitStates {
  final String successMsg;
  SendCodeSuccessState({required this.successMsg});
}
