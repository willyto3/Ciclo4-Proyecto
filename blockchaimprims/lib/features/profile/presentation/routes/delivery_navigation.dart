import 'package:blockchaimprims/features/profile/presentation/pages/splash/splash_binding.dart';
import 'package:blockchaimprims/features/profile/presentation/pages/splash/splash_screen.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';

class DeliveryRoutes {
  static const String splash = '/splash';
}

class DeliveryPages {
  static final pages = [
    GetPage(
      name: DeliveryRoutes.splash,
      page: () => const SplashScreen(),
      binding: SplashBinding(),
    )
  ];
}
