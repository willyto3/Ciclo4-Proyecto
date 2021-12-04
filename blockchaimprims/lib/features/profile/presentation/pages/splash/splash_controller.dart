import 'package:blockchaimprims/features/profile/domain/repositories/api_repository.dart';
import 'package:blockchaimprims/features/profile/domain/repositories/local_storage_repository.dart';
import 'package:blockchaimprims/features/profile/presentation/routes/delivery_navigation.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:get/state_manager.dart';

class SplashController extends GetxController {
  final LocalRepositoryInterface localRepositoryInterface;
  final ApiRepositoryInterface apiRepositoryInterface;

  SplashController({
    required this.localRepositoryInterface,
    required this.apiRepositoryInterface,
  });

  @override
  void onReady() {
    validateSession();
    super.onReady();
  }

  void validateSession() async {
    final token = await localRepositoryInterface.getToken();

    if (token == 'PRUEBA') {
      final user = await apiRepositoryInterface.getUserFromToken(token);
      await localRepositoryInterface.saveUser(user);
    } else {
      Get.offNamed(DeliveryRoutes.login);
    }
  }
}
