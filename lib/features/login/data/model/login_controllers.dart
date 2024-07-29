import 'package:flutter/material.dart';

class LoginControllers {
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
}
