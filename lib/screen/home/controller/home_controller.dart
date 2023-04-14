import 'package:add_to_card_getx/screen/home/model/home_model.dart';
import 'package:get/get.dart';
class HomeController extends GetxController
{
  List<ProductModel>productList=<ProductModel>[
    ProductModel(images: "🥭", name: "Mango", price: "700"),
    ProductModel(images: "🍎", name: "Apple", price: "250"),
    ProductModel(images: "🍉", name: "Watermelon", price: "120"),
    ProductModel(images: "🍍", name: "Pineapple", price: "200"),
    ProductModel(images: "🍌", name: "Banana", price: "70"),
    ProductModel(images: "🥝", name: "Kiwi", price: "150"),
    ProductModel(images: "🍐", name: "Pear", price: "100"),
    ProductModel(images: "🍒", name: "Cherries", price: "200"),
    ProductModel(images: "🍓", name: "Strawberry", price: "100"),
    ProductModel(images: "🍈", name: "Melon", price: "170"),


  ].obs;
  RxList<ProductModel> CartList = <ProductModel>[].obs;
}