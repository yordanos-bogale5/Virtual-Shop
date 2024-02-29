import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool showButtons = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Virtual Shop'),
        actions: [
          // Search bar in the AppBar
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {},
          ),
        ],
        // Four Elevated Buttons in the AppBar
         bottom:PreferredSize(
          preferredSize: const Size.fromHeight(48),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    showButtons = !showButtons;
                  });
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                ),
                child: const Text('Actions'),
              ),
            ],
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [

          if (showButtons)
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                  ),
                  child: const Text('Button 1'),
                ),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,
                  ),
                  child: const Text('Button 2'),
                ),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.orange,
                  ),
                  child: const Text('Button 3'),
                ),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red,
                  ),
                  child: const Text('Button 4'),
                ),
              ],
            ),

          const Card(
            child: ListTile(
              title: Text('Item 1'),
              subtitle: Text('Description of item 1'),
              trailing: Icon(Icons.add_shopping_cart),
            ),
          ),
          const Card(
            child: ListTile(
              title: Text('Item 2'),
              subtitle: Text('Description of item 2'),
              trailing: Icon(Icons.add_shopping_cart),
            ),
          ),

          const Divider(),
          const Text('Trending shops'),
          const Divider(),

          const Card(
            child: ListTile(
              title: Text('Shop 1'),
              subtitle: Text('Description of shop 1'),
              trailing: Icon(Icons.store),
            ),
          ),
          const Card(
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
