import 'package:flutter/material.dart';

class ForgetPasswordControllers {
  static final forgetPassFormKey = GlobalKey<FormState>();
  static TextEditingController email = TextEditingController();
  static TextEditingController emailReset = TextEditingController();
  static TextEditingController password = TextEditingController();
  static TextEditingController confirmPassword = TextEditingController();
  static TextEditingController c1 = TextEditingController();
  static TextEditingController c2 = TextEditingController();
  static TextEditingController c3 = TextEditingController();
  static TextEditingController c4 = TextEditingController();
  static TextEditingController c5 = TextEditingController();
  static TextEditingController c6 = TextEditingController();

  dispose() {
    email.dispose();
    emailReset.dispose();
    password.dispose();
    confirmPassword.dispose();
  }
}
