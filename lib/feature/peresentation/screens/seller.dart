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
  final String name;
  final double  price;

  NewProduct({required this.name, required this.price});
}

class MyProduct {
  final String name;
  final double price;

  MyProduct({required this.name, required this.price});
}

class ForProduct {
  final String name;
  final double price;

  ForProduct({required this.name, required this.price});
}
class AllProduct {
  final String name;
  final double price;

  AllProduct({required this.name, required this.price});
}
class ThisProduct {
  final String name;
  final double price;

  ThisProduct({required this.name, required this.price});
}
class QueryProduct {
  final String name;
  final double price;

QueryProduct({required this.name, required this.price});
}
class RowProduct {
  final String name;
  final double price;

  RowProduct({required this.name, required this.price});
}