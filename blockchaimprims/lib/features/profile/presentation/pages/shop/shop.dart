import 'package:blockchaimprims/features/profile/presentation/pages/shop/shop_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Shop extends StatelessWidget {
  Shop({Key? key}) : super(key: key);
  final ShopController shopController = Get.put(ShopController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Obx(
              () {
                if (shopController.loading.value == true) {
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                }

                if (shopController.products.isEmpty) {
                  return const Center(
                    child: Text('No products Founds'),
                  );
                }
                return ListView.builder(
                  itemCount: shopController.products.length,
                  padding: const EdgeInsets.only(top: 10),
                  itemBuilder: (BuildContext context, int index) => Card(
                    child: Container(
                      height: 150,
                      padding: const EdgeInsets.all(10),
                      margin: const EdgeInsets.only(bottom: 10),
                      child: Row(
                        children: [
                          Container(
                            width: 120,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: NetworkImage(
                                    shopController.products[index]["image"]),
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                          const SizedBox(width: 10),
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      shopController.products[index]["title"],
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                    Expanded(
                                      child: Text(
                                        shopController.products[index]
                                            ["description"],
                                        maxLines: 5,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    ),
                                    Text(
                                        '\$${shopController.products[index]["price"]}'),
                                  ]),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
