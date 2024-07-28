import 'package:flutter/material.dart';

class SignUpControllers {
  static final signUpFormKey = GlobalKey<FormState>();
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

  static bool isNotEmpty() {
    return (userName.text.isNotEmpty &&
        phoneNumber.text.isNotEmpty &&
        email.text.isNotEmpty &&
        password.text.isNotEmpty &&
        confirmPassword.text.isNotEmpty);
  }
}
