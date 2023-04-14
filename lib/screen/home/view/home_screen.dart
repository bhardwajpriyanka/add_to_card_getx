import 'package:add_to_card_getx/screen/home/controller/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  HomeController? homeController = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Product Detail"),
          centerTitle: true,
          backgroundColor: Colors.pinkAccent,
          actions: [IconButton(onPressed: () {
            Get.toNamed("cart");

          }, icon: Icon(Icons.add_shopping_cart))
          ],
        ),
        body: Center(
          child: Column(
            children: [
              Expanded(
                child: ListView.builder(
                    itemBuilder: (context, index) {
                      return ListTile(
                        onTap: () {
                          Get.toNamed('product',arguments: index);
                        },
                        leading: Text(
                          "${homeController!.productList[index].images}",
                          style: TextStyle(fontSize: 30),
                        ),
                        title: Text(
                            "${homeController!.productList[index].name}"),
                        subtitle: Text(
                            "${homeController!.productList[index].price}"),
                      );
                    },
                    itemCount: homeController!.productList.length),
              ),
            ],
          ),
        ),
      ),
    );
  }
}