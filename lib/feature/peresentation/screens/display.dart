
import 'package:flutter/material.dart';

class ItemsScreen extends StatelessWidget {
  const ItemsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Items'),
      ),
      body: ListView(
        children: const [
          ListTile(
            title: Text('Item 1'),
            subtitle: Text('Description of item 1'),
            trailing: Text('\$10.00'),
          ),
          ListTile(
            title: Text('Item 2'),
            subtitle: Text('Description of item 2'),
            trailing: Text('\$15.00'),
          ),
          ListTile(
            title: Text('Item 3'),
            subtitle: Text('Description of item 3'),
            trailing: Text('\$20.00'),
          ),
        ],
      ),
    );
  }
}