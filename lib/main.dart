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
      builder: (context, child) {
        final mediaQuery = MediaQuery.of(context);
        final widthFactor = (mediaQuery.size.width / 375).clamp(0.9, 1.15);
        final systemScale = mediaQuery.textScaler.scale(1);
        return MediaQuery(
          data: mediaQuery.copyWith(
            textScaler: TextScaler.linear(systemScale * widthFactor),
          ),
          child: child ?? const SizedBox.shrink(),
        );
      },
      theme: ThemeData().copyWith(
        scaffoldBackgroundColor: Colors.white,
      ),
    );
  }
}
