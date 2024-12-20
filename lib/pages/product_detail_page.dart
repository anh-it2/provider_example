import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_example_vd_2/provider/cart_provider.dart';
class ProductDetailsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final cartProvider = Provider.of<CartProvider>(context);
    final product = cartProvider.product;

    return  Scaffold(
      appBar: AppBar(
        title: Text('Chi tiết sản phẩm'),
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
              // Cập nhật ảnh sản phẩm
              cartProvider.updateProductImage();
              // Quay lại trang CartPage
              Navigator.pop(context);
            },
            child: Text('Cập nhật ảnh',
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
