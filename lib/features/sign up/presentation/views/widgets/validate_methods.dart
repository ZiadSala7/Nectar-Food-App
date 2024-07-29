import 'package:nectar_app/features/sign%20up/data/models/sign_up_controllers.dart';

String? userNameValidateMethod(value) {
  return (!value!.contains(RegExp(r'[!\/@#$%^&*(),.?":{}|<>+=-]')))
      ? null
      : "Username must contain only letters and number";
}

String? phoneNumberValidateMethod(value) {
  return (!value!.contains(RegExp(r'[a-z]')) &&
          !value.contains(RegExp(r'[A-Z]')) &&
          !value.contains(RegExp(r'[!\/@#$%^&*(),.?":{}|<>+=-]')))
      ? null
      : "Phone number must contain only numbers";
}

String? emailValidateMethod(value) {
  return (!value!.contains(RegExp(
              r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$')) &&
          value.isNotEmpty)
      ? "Enter a valid email"
      : null;
}

String? passwordValidateMethod(value) {
  return ((value!.contains(RegExp(r'[a-z]')) &&
                  value.contains(RegExp(r'[A-Z]')) &&
                  value.contains(RegExp(r'[!\/@#$%^&*(),.?":{}|<>+=-]')) &&
                  value.contains(RegExp(r'[0-9]'))) &&
              value.length >= 8 ||
          value.isEmpty)
      ? null
      : "Password must contain at least one lowercase letter, \none uppercase letter, one digit, and one special character";
}

String? confirmPasswordValidateMethod(value) {
  return value == SignUpControllers.password.text || value.isEmpty
      ? null
      : "Password isn't identical";
}
