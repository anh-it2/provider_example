import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_example_vd_2/pages/cart_page.dart';
import 'package:provider_example_vd_2/pages/check_out_page.dart';
import 'package:provider_example_vd_2/pages/product_detail_page.dart';
import 'package:provider_example_vd_2/pages/wish_list_page.dart';

import 'package:provider_example_vd_2/provider/cart_provider.dart';

void main() => runApp(ChangeNotifierProvider(
  create: (context) => CartProvider(),
  child: MyApp(),
));

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Provider demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => CartPage(),
        '/product_details': (context) => ProductDetailsPage(),
        '/wishlist': (context) => WishListPage(),
        '/checkout': (context) => CheckOutPage(),
      },
    );
  }
}
