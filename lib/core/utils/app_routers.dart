import 'package:go_router/go_router.dart';
import 'package:nectar_app/features/forget%20password/presentation/views/forget_password_view.dart';
import 'package:nectar_app/features/login/presentation/views/login_view.dart';
import 'package:nectar_app/features/on%20boarding/presentation/views/onboarding_view.dart';
import 'package:nectar_app/features/splash/presentation/views/splash_view.dart';

abstract class AppRouters {
  static const String loginView = '/loginView';
  static const String forgetPasswordView = '/forgetPassword';
  static const String onBoardingView = '/onBoarding';
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
        path: onBoardingView,
        builder: (context, state) => const OnBoardingView(),
      ),
      GoRoute(
        path: loginView,
        builder: (context, state) => const LoginView(),
      ),
      GoRoute(
        path: forgetPasswordView,
        builder: (context, state) => const ForgetPasswordView(),
      ),
    ],
  );
}
