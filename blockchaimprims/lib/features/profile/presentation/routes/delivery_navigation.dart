import 'package:blockchaimprims/features/profile/presentation/pages/bottom_bar/bottom_bar_screen.dart';
import 'package:blockchaimprims/features/profile/presentation/pages/login/login_screen.dart';
import 'package:blockchaimprims/features/profile/presentation/pages/splash/splash_binding.dart';
import 'package:blockchaimprims/features/profile/presentation/pages/splash/splash_screen.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';

class DeliveryRoutes {
  static const String splash = '/splash';
  static const String login = '/login';
  static const String bottomBar = '/bottomBar';
}

class DeliveryPages {
  static final pages = [
    GetPage(
      name: DeliveryRoutes.splash,
      page: () => SplashScreen(),
      binding: SplashBinding(),
    ),
    GetPage(
      name: DeliveryRoutes.login,
      page: () => const LoginScreen(),
      binding: SplashBinding(),
    ),
    GetPage(
      name: DeliveryRoutes.bottomBar,
      page: () => const BottomBarScreen(),
      binding: SplashBinding(),
    )
  ];
}
