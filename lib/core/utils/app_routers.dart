import 'package:go_router/go_router.dart';
import 'package:nectar_app/features/explore/presentation/views/display_products_view.dart';
import 'package:nectar_app/features/explore/presentation/views/explore_view.dart';
import 'package:nectar_app/features/favourites/presentation/views/favourites_view.dart';
import 'package:nectar_app/features/forget%20password/presentation/views/forget_password_view.dart';
import 'package:nectar_app/features/home/presentation/views/app_view_bottom_navigation.dart';
import 'package:nectar_app/features/home/presentation/views/home_view.dart';
import 'package:nectar_app/features/home/presentation/views/product_details_view.dart';
import 'package:nectar_app/features/login/presentation/views/login_view.dart';
import 'package:nectar_app/features/my%20cart/presentation/views/my_cart_view.dart';
import 'package:nectar_app/features/on%20boarding/presentation/views/onboarding_view.dart';
import 'package:nectar_app/features/reset%20password%20acepted/presentation/views/reset_password_accepted_view.dart';
import 'package:nectar_app/features/search/presentation/views/search_view.dart';
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
  static const String exploreView = '/exploreView';
  static const String searchView = '/searchView';
  static const String dislayProducts = '/displayProduct';
  static const String myCartView = '/myCartView';
  static const String favouritesView = '/favouritesView';
  static const String appView = '/appView';

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
      GoRoute(
        path: exploreView,
        builder: (context, state) => const ExploreView(),
      ),
      GoRoute(
        path: searchView,
        builder: (context, state) => const SearchView(),
      ),
      GoRoute(
        path: dislayProducts,
        builder: (context, state) => const DisplayProductsView(),
      ),
      GoRoute(
        path: myCartView,
        builder: (context, state) => const MyCartView(),
      ),
      GoRoute(
        path: favouritesView,
        builder: (context, state) => const FavouritesView(),
      ),
      GoRoute(
        path: appView,
        builder: (context, state) => const AppViewBottomNavigation(),
      ),
    ],
  );
}
