import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ShopSellerScreen(),
    );
  }
}

class ShopSellerScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Shop Seller Screen'),
      ),
      body: Center(
        child: Text('Welcome, Shop Seller!'),
      ),
    );
  }
  
}


class Product {
  final String name;
  final double price;

  Product({required this.name, required this.price});
}

class NewProduct {
  final String father name;
  final double item price;

  NewProduct({required this.name, required this.price});
}