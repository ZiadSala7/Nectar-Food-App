import 'package:flutter/material.dart';
import 'package:nectar_app/core/utils/app_routers.dart';

void main() {
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
