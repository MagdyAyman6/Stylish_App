import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:stylish/features/home/presentation/views/my_wishlist_view.dart';
import 'package:stylish/features/home/presentation/views/profile_view.dart';
import 'package:stylish/features/splash/presentation/get_started_view.dart';
import '../../features/auth/presentation/views/forget_password_view.dart';
import '../../features/auth/presentation/views/log_in_view.dart';
import '../../features/auth/presentation/views/sign_up_view.dart';
import '../../features/home/presentation/views/my_home_page_view.dart';
import '../../features/home/presentation/views/shipping_view.dart';
import '../../features/home/presentation/views/widgets/checkout_widgets/checkout_body.dart';
import '../../features/splash/presentation/splash_view.dart';

abstract class AppRouter {
  static const kOnboardingView = '/OnboardingView';
  static const kSignUpView = '/SignUpView';
  static const kForgetPassView = '/ForgetPassView';
  static const kVerifyCodeView = '/VerifyCodeView';
  static const kMyHomeView = '/MyHomeView';
  static const kMyLogin = '/login';
  static const kGetStarted = '/GetStartedView';
  static const kProfileView = '/Profile';
  static const kCheckout = '/Checkout';
  static const kWishlist = '/Wishlist';
  static const kShipping = '/Shipping';

  static final GoRouter router = GoRouter(
    routes: <RouteBase>[
      GoRoute(
        path: '/',
        builder: (BuildContext context, GoRouterState state) {
          return const SplashView();
        },
      ),
      GoRoute(
        path: kGetStarted,
        builder: (BuildContext context, GoRouterState state) {
          return const GetStartedView();
        },
      ),
      GoRoute(
        path: kSignUpView,
        builder: (BuildContext context, GoRouterState state) {
          return const SignUpView();
        },
      ),
      GoRoute(
        path: kForgetPassView,
        builder: (BuildContext context, GoRouterState state) {
          return const ForgetPasswordView();
        },
      ),
      GoRoute(
        path: kProfileView,
        builder: (BuildContext context, GoRouterState state) {
          return const ProfileView();
        },
      ),
      GoRoute(
        path: kCheckout,
        builder: (BuildContext context, GoRouterState state) {
          return const CheckoutBody();
        },
      ),
      GoRoute(
        path: kShipping,
        builder: (BuildContext context, GoRouterState state) {
          return const ShippingView();
        },
      ),
      GoRoute(
        path: kWishlist,
        builder: (BuildContext context, GoRouterState state) {
          return const MyWishlistView();
        },
      ),
      GoRoute(
        path: kMyHomeView,
        builder: (BuildContext context, GoRouterState state) {
          return const MyHomePageView();
        },
      ),
      GoRoute(
        path: kMyLogin,
        builder: (context, state) => const LogInView(),
      ),
    ],
  );
}
