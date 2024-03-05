import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

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
