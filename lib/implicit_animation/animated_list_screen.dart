import 'package:flutter/material.dart';

class AnimatedListScreen extends StatefulWidget {
  const AnimatedListScreen({super.key});

  @override
  State<AnimatedListScreen> createState() => _AnimatedListScreenState();
}

class _AnimatedListScreenState extends State<AnimatedListScreen> {
  final GlobalKey<AnimatedListState> _listKey = GlobalKey<AnimatedListState>();

  addItem() {
    setState(() {
      _items.add('item ${_currentIndex}');
      _listKey.currentState?.insertItem(0);
      _currentIndex++;
    });
  }

  removeItem(int index) {
    setState(() {
      var deletedItem = _items.removeAt(index);

      _listKey.currentState!.removeItem(
          index,
          duration: Duration(milliseconds: 500),
          (context, animation) => Container(
              color: Colors.redAccent,
              child: ListTile(
                title: Text("${deletedItem}"),
              )));
    });
  }

  int _currentIndex = 0;
  List<String> _items = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Animated Container Example"),
      ),
      body: AnimatedList(
        key: _listKey,
        itemBuilder: (context, index, animation) => SizeTransition(
          sizeFactor: animation,
          child: Container(
            margin: EdgeInsets.all(5),
            color: Colors.lightGreen,
            child: ListTile(
              title: Text(_items[index]),
              trailing: IconButton(
                  icon: Icon(
                    Icons.delete,
                  ),
                  onPressed: () {
                    removeItem(index);
                  }),
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          addItem();
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
