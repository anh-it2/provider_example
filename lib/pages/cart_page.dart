import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_example_vd_2/provider/cart_provider.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    final cartProvider = Provider.of<CartProvider>(context);
    final product = cartProvider.product;
    return Scaffold(
      appBar: AppBar(
        title: Text('Giỏ hàng'),
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
          ElevatedButton(
            onPressed: () {
              // Chuyển tới màn hình ProductDetailsPage
              Navigator.pushNamed(context, '/product_details');
            },
            child: Text('Chỉnh sửa sản phẩm',
              style: TextStyle(
                fontSize: 20,
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              // Chuyển tới màn hình WishlistPage
              Navigator.pushNamed(context, '/wishlist');
            },
            child: Text('Danh sách yêu thích',
              style: TextStyle(
                fontSize: 20,
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              // Chuyển tới màn hình CheckoutPage
              Navigator.pushNamed(context, '/checkout');
            },
            child: Text('Thanh toán',
              style: TextStyle(
                fontSize: 20,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
