import 'package:flutter/material.dart';
import 'package:nectar_app/constants.dart';
import 'package:nectar_app/features/splash/presentation/views/widgets/splash_view_body.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});
  static const String id = 'SplashView';

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: commonColor,
      body: SplashViewBody(),
    );
  }
}
