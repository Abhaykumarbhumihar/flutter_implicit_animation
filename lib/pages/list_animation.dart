import 'package:flutter/material.dart';

class ListAnimationExample extends StatefulWidget {
  const ListAnimationExample({super.key});

  @override
  State<ListAnimationExample> createState() => _ListAnimationExampleState();
}

class _ListAnimationExampleState extends State<ListAnimationExample> {
  final GlobalKey<AnimatedListState> _listKey = GlobalKey<AnimatedListState>();

  // List of items
  List<String> _items = ['Item 1', 'Item 2', 'Item 3'];

  // Method to add an item
  void _addItem() {
    final int index = _items.length;
    _items.add('Item ${index + 1}');

    // Insert the new item into the list with animation
    _listKey.currentState!.insertItem(index,duration: Duration(seconds: 1), );
  }

  // Method to remove an item
  void _removeItem(int index) {
    final removedItem = _items[index];

    // Remove the item from the list with animation
    _listKey.currentState!.removeItem(
      index,
          (context, animation) {
        // Use a SlideTransition to move the item from left to right
        return SlideTransition(
          position: Tween<Offset>(
            begin: Offset(1, 0), // Start at the current position
            end: Offset(0, 0),   // Move to the right
          ).animate(animation),
          child: _buildItem(removedItem, animation),
        );
      },
      duration: Duration(seconds: 2),
    );

    _items.removeAt(index);
  }

  Widget _buildItem(String item, Animation<double> animation) {
    return SizeTransition(
      sizeFactor: animation,
      child: Card(
        margin: EdgeInsets.symmetric(vertical: 8),
        child: ListTile(
          title: Text(item),
          trailing: IconButton(
            icon: Icon(Icons.delete, color: Colors.red),
            onPressed: () {
              _removeItem(_items.indexOf(item));
            },
          ),
        ),
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: const Text("ListAnimation"),
      ),
          body: SizedBox(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: ElevatedButton(
                    onPressed: _addItem,
                    child: Text('Add Item'),
                  ),
                ),

                // The AnimatedList widget
                Expanded(
                  child: AnimatedList(
                    key: _listKey,
                    initialItemCount: _items.length,
                    itemBuilder: (context, index, animation) {
                      return _buildItem(_items[index], animation);
                    },
                  ),
                )
              ],
            ),
          ),
    ));
  }
}
