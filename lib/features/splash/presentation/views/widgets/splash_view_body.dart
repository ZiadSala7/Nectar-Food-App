import 'package:flutter/material.dart';
import 'package:nectar_app/constants.dart';
import 'package:nectar_app/core/utils/app_images.dart';
import 'package:nectar_app/features/on%20boarding/presentation/views/onboarding_view.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> slidingAnimation;

  @override
  void initState() {
    super.initState();
    initSlidingAnimation();
    homeNavidation();
  }

  @override
  void dispose() {
    super.dispose();
    animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SlideTransition(
      position: slidingAnimation,
      child: Center(
        child: SizedBox(
          height: MediaQuery.of(context).size.height * 0.9,
          width: MediaQuery.of(context).size.width * 0.62,
          child: Image.asset(AppImages.splashImg),
        ),
      ),
    );
  }

  void initSlidingAnimation() {
    animationController = AnimationController(
      vsync: this,
      duration: kAnimationDuration,
    );
    slidingAnimation =
        Tween<Offset>(begin: const Offset(0, -1), end: const Offset(0, 0))
            .animate(animationController);
    animationController.forward();
  }

  void homeNavidation() {
    Future.delayed(kTransitionDuration, () {
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => const OnBoardingView(),
          ));
    });
  }
}
