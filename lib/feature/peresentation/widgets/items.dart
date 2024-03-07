import 'package:flutter/material.dart';

class ItemsScreen extends StatelessWidget {
  final List<String> items; // Replace with your actual list of items

  ItemsScreen(this.items);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Virtual Shop Items'),
      ),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return Card(
            elevation: 2.0,
            margin: EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
            child: ListTile(
              title: Text(
                items[index],
                style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
              ),
              subtitle: Text('Item Description goes here'),
              leading: CircleAvatar(
                // You can replace this with an actual item image
                backgroundColor: Colors.blue,
                child: Icon(Icons.shopping_cart, color: Colors.white),
              ),
              trailing: IconButton(
                icon: Icon(Icons.add_shopping_cart),
                onPressed: () {
                  // Add item to the shopping cart
                  // You can implement your cart logic here
                },
              ),
              onTap: () {
                // Navigate to item details page or perform additional action
                // You can customize this based on your needs
                _navigateToItemDetails(context, items[index]);
              },
            ),
          );
        },
      ),
    );
  }

  void _navigateToItemDetails(BuildContext context, String itemName) {
    // Implement navigation logic to the item details page
    // You can use Navigator.push() to navigate to a new screen
    // Example: Navigator.push(context, MaterialPageRoute(builder: (context) => ItemDetailsScreen(itemName)));
  }
}
