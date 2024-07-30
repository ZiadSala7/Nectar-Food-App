import 'package:flutter/material.dart';

class SignUpControllers {
  static final signUpFormKey = GlobalKey<FormState>();
  static TextEditingController userName = TextEditingController();
  static TextEditingController phoneNumber = TextEditingController();
  static TextEditingController email = TextEditingController();
  static TextEditingController password = TextEditingController();
  static TextEditingController confirmPassword = TextEditingController();

  static bool isNotEmpty() {
    return (userName.text.isNotEmpty &&
        phoneNumber.text.isNotEmpty &&
        email.text.isNotEmpty &&
        password.text.isNotEmpty &&
        confirmPassword.text.isNotEmpty);
  }

  static clearControllers() {
    userName.clear();
    phoneNumber.clear();
    email.clear();
    password.clear();
    confirmPassword.clear();
  }
}
