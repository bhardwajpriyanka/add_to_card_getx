import 'package:add_to_card_getx/screen/home/controller/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../home/model/home_model.dart';


class ProductData extends StatefulWidget {
  const ProductData({Key? key}) : super(key: key);

  @override
  State<ProductData> createState() => _ProductDataState();
}

class _ProductDataState extends State<ProductData> {
  HomeController? homeController = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    int index = Get.arguments;

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Product Data"),
          centerTitle: true,
          backgroundColor: Colors.pinkAccent,
        ),
        body: Column(
          children: [
            Align(
              alignment: Alignment.topCenter,
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Container(
                  height: 150,
                  width: 200,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.pinkAccent.shade100),
                  child: Column(
                    children: [
                      SizedBox(height: 7),
                      Text(
                        "${homeController!.productList[index].images}",
                        style: TextStyle(fontSize: 50),
                      ),
                      SizedBox(height: 10),
                      Text(
                        "${homeController!.productList[index].name}",
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "${homeController!.productList[index].price}",
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.pinkAccent,
                            fontWeight: FontWeight.w400),
                      )
                    ],
                  ),
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                ProductModel P1 = ProductModel(
                  images: "${homeController!.productList[index].images}",
                  name: "${homeController!.productList[index].images}",
                  price: "${homeController!.productList[index].price}",
                );
                homeController!.CartList.add(P1);
                Get.back();
              },
              child: Text(
                "Add To cart",
              ),
              style: ElevatedButton.styleFrom(backgroundColor: Colors.pinkAccent),
            )
          ],
        ),
      ),
    );
  }
}