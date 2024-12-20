import 'package:flutter/material.dart';

class Product {
  String name;
  String imageUrl;

  Product({
    required this.name,
    required this.imageUrl,
  });
}
 String url1 = 'https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885_1280.jpg';
String url2 = 'https://cdn.pixabay.com/photo/2015/04/23/21/59/tree-736875_960_720.jpg';
class CartProvider extends ChangeNotifier {
  Product _product = Product(name: 'Sản phẩm A', imageUrl: url1);

  Product get product => _product;

  void updateProductImage() {
    if(_product.imageUrl == url1) _product.imageUrl = url2;
    else _product.imageUrl = url1;
    notifyListeners(); // Thông báo các widget lắng nghe để cập nhật
  }
}