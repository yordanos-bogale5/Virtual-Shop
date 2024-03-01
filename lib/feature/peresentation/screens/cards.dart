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

class AmazonLikeScreen extends StatefulWidget {
  const AmazonLikeScreen({super.key});

  @override
  _AmazonLikeScreenState createState() => _AmazonLikeScreenState();
}

class _AmazonLikeScreenState extends State<AmazonLikeScreen> {
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
    return Scaffold(
      appBar: AppBar(
        title: const Text('Amazon-like Shop'),
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {
              // Implement search functionality
            },
          ),
          IconButton(
            icon: const Icon(Icons.shopping_cart),
            onPressed: () {
              // Navigate to shopping cart screen
              Navigator.push(context, MaterialPageRoute(builder: (context) => ShoppingCartScreen()));
            },
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: products.length,
        itemBuilder: (context, index) {
          return Card(
            elevation: 5.0,
            margin: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
            child: ListTile(
              leading: Image.network(
                'https://via.placeholder.com/80', // Replace with actual image URL
                width: 80.0,
                height: 80.0,
                fit: BoxFit.cover,
              ),
              title: Text(products[index].name),
              subtitle: Text(products[index].description),
              trailing: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    products[index].price,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16.0,
                      color: Colors.green,
                    ),
                  ),
                  const SizedBox(height: 4.0),
                  ElevatedButton(
                    onPressed: () {
                      // Add product to cart logic
                    },
                    child: const Text('Add to Cart'),
                  ),
                ],
              ),
              onTap: () {
                // Navigate to product details screen
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ProductDetailsScreen(product: products[index]),
                  ),
                );
              },
            ),
          );
        },
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.category),
            label: 'Categories',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Favorites',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Account',
          ),
        ],
      ),
    );
  }
}

class ProductDetailsScreen extends StatelessWidget {
  final Product product;

  const ProductDetailsScreen({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(product.name),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network(
              'https://via.placeholder.com/300', // Replace with actual image URL
              width: double.infinity,
              height: 200.0,
              fit: BoxFit.cover,
            ),
            const SizedBox(height: 16.0),
            Text(
              product.description,
              style: const TextStyle(fontSize: 18.0),
            ),
            const SizedBox(height: 16.0),
            Text(
              'Price: ${product.price}',
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16.0,
                color: Colors.green,
              ),
            ),
            const SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                // Add to cart logic
              },
              child: const Text('Add to Cart'),
            ),
          ],
        ),
      ),
    );
  }
}

class ShoppingCartScreen extends StatelessWidget {
  const ShoppingCartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Shopping Cart'),
      ),
      body: const Center(
        child: Text('This is the shopping cart screen.'),
      ),
    );
  }
}


