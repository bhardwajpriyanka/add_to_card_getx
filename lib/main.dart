import 'package:add_to_card_getx/screen/cart/view/cart_screen.dart';
import 'package:add_to_card_getx/screen/home/view/home_screen.dart';
import 'package:add_to_card_getx/screen/product/view/product_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';



void main() {
  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (p0) =>HomeScreen(),
        'product': (p0) => ProductData(),
        'cart': (p0) =>CartScreen(),
      },
    ),
  );
}

