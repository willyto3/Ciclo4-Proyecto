import 'package:blockchaimprims/features/profile/presentation/pages/shop/shop_repository.dart';
import 'package:get/get.dart';

class ShopController extends GetxController {
  ShopRepository shopRepository = ShopRepository();
  RxBool loading = false.obs;
  List products = [].obs;

  ShopController() {
    loadProductsFromRepo();
  }

  loadProductsFromRepo() async {
    loading.value = true;
    products = await shopRepository.loadProductsFromApi();
    loading.value = false;
  }
}
