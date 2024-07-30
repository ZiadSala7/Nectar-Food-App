import 'package:flutter/material.dart';

class ForgetPasswordControllers {
  static final forgetPassFormKey = GlobalKey<FormState>();
  static TextEditingController email = TextEditingController();
  static TextEditingController emailReset = TextEditingController();
  static TextEditingController password = TextEditingController();
  static TextEditingController confirmPassword = TextEditingController();

  dispose() {
    email.dispose();
    emailReset.dispose();
    password.dispose();
    confirmPassword.dispose();
  }
}
