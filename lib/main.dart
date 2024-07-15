import 'package:flutter/material.dart';
import 'package:nectar_app/core/utils/app_routers.dart';
import 'package:shared_preferences/shared_preferences.dart';

int selectedIndx = 0;
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SharedPreferences.getInstance();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        routerConfig: AppRouters.router,
      ),
    );
  }
}
