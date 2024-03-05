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
class ShopSellerScreen extends StatelessWidget {
  // Dummy data for products (replace it with your actual data)
  final List<Product> products = [
    Product(name: 'Product 1', price: 20.0),
    Product(name: 'Product 2', price: 30.0),
    Product(name: 'Product 3', price: 25.0),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Shop Seller Screen'),
      ),
      body: ListView.builder(
        itemCount: products.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(products[index].name),
            subtitle: Text('\$${products[index].price.toString()}'),
            // Add more functionality here, such as editing or deleting products
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Add functionality to add new products
          // You can open a dialog or navigate to a new screen for adding products
        },
        child: Icon(Icons.add),
      ),
    );
  }
}

class Product {
  final String name;
  final double price;

  Product({required this.name, required this.price});
}