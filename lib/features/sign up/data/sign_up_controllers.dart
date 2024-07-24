import 'package:flutter/material.dart';

class SignUpControllers {
  static TextEditingController userName = TextEditingController();
  static TextEditingController phoneNumber = TextEditingController();
  static TextEditingController email = TextEditingController();
  static TextEditingController password = TextEditingController();
  static TextEditingController confirmPassword = TextEditingController();

  disposeFunction() {
    userName.dispose();
    phoneNumber.dispose();
    email.dispose();
    password.dispose();
    confirmPassword.dispose();
  }
}
