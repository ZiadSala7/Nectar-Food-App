import 'package:flutter/material.dart';

class LoginControllers {
  static final loginFormKey = GlobalKey<FormState>();
  static TextEditingController email = TextEditingController();
  static TextEditingController password = TextEditingController();

  static dispose() {
    email.dispose();
    password.dispose();
  }

  static clear() {
    email.clear();
    password.clear();
  }

  static bool isNotEmpty() {
    return (email.text.isNotEmpty && password.text.isNotEmpty);
  }
}
