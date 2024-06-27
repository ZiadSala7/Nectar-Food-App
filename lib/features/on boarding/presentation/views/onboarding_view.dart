import 'package:flutter/material.dart';
import 'package:nectar_app/features/on%20boarding/presentation/views/widgets/onboarding_view_body.dart';

class OnBoardingView extends StatelessWidget {
  const OnBoardingView({super.key});
  static const String id = 'OnBoardingView';

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: OnBoardingViewBody(),
    );
  }
}
