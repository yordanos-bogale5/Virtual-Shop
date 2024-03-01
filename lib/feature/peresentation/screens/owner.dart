import 'package:flutter/material.dart';

class ShopOwnerHomeScreen extends StatelessWidget {
  const ShopOwnerHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Welcome Shop Owner'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Welcome to Your Virtual Shop!',
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {

                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ManageProductsScreen()),
                );
              },
              child: const Text('Manage Products'),
            ),
            const SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {

                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SalesReportsScreen()),
                );
              },
              child: const Text('View Sales Reports'),
            ),
          ],
        ),
      ),
    );
  }
}

class ManageProductsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Manage Products'),
      ),
      body: const Center(
        child: Text('This is where shop owners can manage their products.'),
      ),
    );
  }
}

class SalesReportsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sales Reports'),
      ),
      body: const Center(
        child: Text('This is where shop owners can view sales reports.'),
      ),
    );
  }
}

