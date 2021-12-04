import 'package:blockchaimprims/features/profile/data/datasources/api_repository_impl.dart';
import 'package:blockchaimprims/features/profile/data/datasources/local_repository_impl.dart';
import 'package:blockchaimprims/features/profile/domain/repositories/api_repository.dart';
import 'package:blockchaimprims/features/profile/domain/repositories/local_storage_repository.dart';
import 'package:get/get.dart';

class MainBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut<LocalRepositoryInterface>(() => LocalRepositoryImpl());
    Get.lazyPut<ApiRepositoryInterface>(() => ApiRepositoryImpl());
  }

}