
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Virtual Shop'),
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {},
          ),
        ],
      ),
      body: ListView(
        children: const [
          // Card for each item
          Card(
            child: ListTile(
              title: Text('Item 1'),
              subtitle: Text('Description of item 1'),
              trailing: Icon(Icons.add_shopping_cart),
            ),
          ),
          Card(
            child: ListTile(
              title: Text('Item 2'),
              subtitle: Text('Description of item 2'),
              trailing: Icon(Icons.add_shopping_cart),
            ),
          ),

          // Section for trending shops
          Divider(),
          Text('Trending shops'),
          Divider(),

          // Card for each trending shop
          Card(
            child: ListTile(
              title: Text('Shop 1'),
              subtitle: Text('Description of shop 1'),
              trailing: Icon(Icons.store),
            ),
          ),
          Card(
            child: ListTile(
              title: Text('Shop 2'),
              subtitle: Text('Description of shop 2'),
              trailing: Icon(Icons.store),
            ),
          ),
        ],
      ),
    );
  }
}