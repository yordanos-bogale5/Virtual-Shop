import 'package:flutter/material.dart';

class Product {
  final String name;
  final String description;
  final String price;

  Product({
    required this.name,
    required this.description,
    required this.price,
  });
}

class AdminPage extends StatelessWidget {
  final List<Product> products = [
    Product(
      name: 'Product 1',
      description: 'Description of Product 1',
      price: '\$19.99',
    ),
    Product(
      name: 'Product 2',
      description: 'Description of Product 2',
      price: '\$29.99',
    ),
    Product(
      name: 'Product 3',
      description: 'Description of Product 3',
      price: '\$39.99',
    ),
    // Add more products as needed
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Admin Page'),
          bottom: const TabBar(
            tabs: [
              Tab(icon: Icon(Icons.shopping_bag), text: 'Manage Products'),
              Tab(icon: Icon(Icons.bar_chart), text: 'View Sales Reports'),
              Tab(icon: Icon(Icons.people), text: 'User Management'),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            ManageProductsScreen(products: products),
            ViewSalesReportsScreen(),
            UserManagementScreen(),
          ],
        ),
      ),
    );
  }
}

class ManageProductsScreen extends StatelessWidget {
  final List<Product> products;

  ManageProductsScreen({required this.products});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: products.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(products[index].name),
            subtitle: Text(products[index].description),
            trailing: Text(products[index].price),
            onTap: () {
              // Add product management logic
            },
          );
        },
      ),
    );
  }
}

class ViewSalesReportsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('View Sales Reports'),
      ),
    );
  }
}

class UserManagementScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('User Management'),
      ),
    );
  }
}


