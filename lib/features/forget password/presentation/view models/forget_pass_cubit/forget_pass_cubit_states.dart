abstract class ForgetPassCubitStates {}

class ForgetPassInitialState extends ForgetPassCubitStates {}

class ForgetPassLoadingState extends ForgetPassCubitStates {}

class ForgetPassFailureState extends ForgetPassCubitStates {
  final String errMessage;
  ForgetPassFailureState({required this.errMessage});
}

class ForgetPassSuccessState extends ForgetPassCubitStates {
  final String successMessage;
  ForgetPassSuccessState({required this.successMessage});
}
