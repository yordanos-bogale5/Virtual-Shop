import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

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
        bottom: PreferredSize(
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
                child: const Text('Show Buttons'),
              ),
            ],
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          // Show elevated buttons if showButtons is true
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

          // Card for each item
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

          // Section for trending shops
          const Divider(),
          const Text('Trending shops'),
          const Divider(),

          // Card for each trending shop
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
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.arrow_upward),
            label: 'Show Buttons',
          ),
        ],
        onTap: (index) {
          setState(() {
            showButtons = !showButtons;
          });
        },
      ),
    );
  }
}
