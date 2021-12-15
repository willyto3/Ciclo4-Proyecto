import 'package:get/get.dart';

import 'home_repository.dart';

class HomeController extends GetxController {
  HomeRepository homeRepository = HomeRepository();
  RxBool loading = false.obs;
  List products = [].obs;

  HomeController() {
    loadProductsFromRepo();
  }

  loadProductsFromRepo() async {
    loading.value = true;
    products = await homeRepository.loadProductsFromApi();
    loading.value = false;
  }
}
