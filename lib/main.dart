import 'package:flutter/material.dart';
import 'package:nectar_app/core/utils/app_routers.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SharedPreferences.getInstance();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: AppRouters.router,
      theme: ThemeData().copyWith(
        scaffoldBackgroundColor: Colors.white,
      ),
    );
  }
}
