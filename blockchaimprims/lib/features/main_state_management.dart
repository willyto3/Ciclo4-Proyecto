import 'package:blockchaimprims/features/profile/presentation/main_binding.dart';
import 'package:blockchaimprims/features/profile/presentation/routes/delivery_navigation.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

class MainStateManagement extends StatelessWidget {
  const MainStateManagement({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/splash',
      getPages: DeliveryPages.pages,
      initialBinding: MainBinding(),
    );
  }
}
