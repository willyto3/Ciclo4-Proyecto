import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'home_controller.dart';

class Home extends StatelessWidget {
  Home({Key? key}) : super(key: key);
  final HomeController homeController = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Obx(
              () {
                if (homeController.loading.value == true) {
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                }

                if (homeController.products.isEmpty) {
                  return const Center(
                    child: Text('No products Founds'),
                  );
                }
                return ListView.builder(
                  itemCount: homeController.products.length,
                  padding: const EdgeInsets.only(top: 10),
                  itemBuilder: (BuildContext context, int index) => Card(
                    child: Container(
                      height: 550,
                      padding: const EdgeInsets.all(10),
                      margin: const EdgeInsets.only(bottom: 10),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              CircleAvatar(
                                backgroundImage: NetworkImage(
                                  homeController.products[index]["image"]),
                                ),
                                const SizedBox(width: 10),
                              Text(
                                homeController.products[index]["title"],
                                textAlign: TextAlign.left,
                                style: const TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                          Container(
                            height: 400,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: NetworkImage(
                                    homeController.products[index]["image"]),
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
                                    Row(
                                      children: [
                                        IconButton(onPressed: () {  }   ,icon: const Icon(Icons.favorite_border_rounded),),
                                        Text(
                                          homeController.products[index]["title"],
                                          maxLines: 1,
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                      ],
                                    ),
                                    Expanded(
                                      child: Text(
                                        homeController.products[index]
                                            ["description"],
                                        maxLines: 5,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    ),
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
