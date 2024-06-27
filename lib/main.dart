import 'package:flutter/material.dart';
import 'package:nectar_app/features/login/presentation/views/login_view.dart';
import 'package:nectar_app/features/on%20boarding/presentation/views/onboarding_view.dart';
import 'package:nectar_app/features/splash/presentation/views/splash_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: SplashView.id,
      routes: {
        OnBoardingView.id: (context) => const OnBoardingView(),
        LoginView.id: (context) => const LoginView(),
        SplashView.id: (context) => const SplashView(),
      },
      home: const SplashView(),
    );
  }
}
