import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_example_vd_2/provider/cart_provider.dart';

class WishListPage extends StatelessWidget {
  const WishListPage({super.key});

  @override
  Widget build(BuildContext context) {
    final cartProvider = Provider.of<CartProvider>(context);
    final product = cartProvider.product;
    return Scaffold(
      appBar: AppBar(
        title: Text('Danh sách yêu thích'),
      ),
      body: Column(
        children: [
          Image.network(product.imageUrl),
          Text(product.name,
            style: TextStyle(
              fontSize: 40,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );;
  }
}
