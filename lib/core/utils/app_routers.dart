import 'package:go_router/go_router.dart';
import 'package:nectar_app/features/forget%20password/presentation/views/forget_password_view.dart';
import 'package:nectar_app/features/home/presentation/views/home_view.dart';
import 'package:nectar_app/features/home/presentation/views/product_details_view.dart';
import 'package:nectar_app/features/login/presentation/views/login_view.dart';
import 'package:nectar_app/features/on%20boarding/presentation/views/onboarding_view.dart';
import 'package:nectar_app/features/reset%20password%20acepted/presentation/views/reset_password_accepted_view.dart';
import 'package:nectar_app/features/sign%20up/presentation/views/sign_up_view.dart';
import 'package:nectar_app/features/splash/presentation/views/splash_view.dart';

abstract class AppRouters {
  static const String loginView = '/loginView';
  static const String forgetPasswordView = '/forgetPassword';
  static const String onBoardingView = '/onBoarding';
  static const String signUpView = '/signUpView';
  static const String resetPasswordAcceptedView = '/resetPasswordAcceptedView';
  static const String homeView = '/homeView';
  static const String detailsView = '/detailsView';
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
      GoRoute(
        path: signUpView,
        builder: (context, state) => const SignUpView(),
      ),
      GoRoute(
        path: resetPasswordAcceptedView,
        builder: (context, state) => const ResetPasswordAcceptedView(),
      ),
      GoRoute(
        path: homeView,
        builder: (context, state) => const HomeView(),
      ),
      GoRoute(
        path: detailsView,
        builder: (context, state) => const ProductDetailsView(),
      ),
    ],
  );
}
