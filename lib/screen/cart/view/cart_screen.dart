import 'package:add_to_card_getx/screen/home/controller/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class CartScreen extends StatefulWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  HomeController? homeController = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Cart Data"),
          centerTitle: true,
          backgroundColor: Colors.pinkAccent,
        ),
        body: Center(
          child: Column(
            children: [
              Expanded(
                child: Obx(
                      () => ListView.builder(
                      itemBuilder: (context, index) {
                        return ListTile(
                          leading: Text(
                            "${homeController!.productList[index].images}",
                            style: TextStyle(fontSize: 30),
                          ),
                          title: Text(
                              "${homeController!.productList[index].name}"),
                          subtitle: Text(
                              "${homeController!.productList[index].price}"),
                          trailing: IconButton(
                              onPressed: () {
                                homeController!.CartList.removeAt(index);
                              },
                              icon: Icon(Icons.delete,color: Colors.redAccent,)),
                        );
                      },
                      itemCount: homeController!.CartList.length),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}