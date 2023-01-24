// (18) Example of animated list animation

import 'package:flutter/material.dart';

class anumatedlist extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyHomePageState();
  }
}

class MyHomePageState extends State<MyHomePage> {
  final _items = [];
  final GlobalKey<AnimatedListState> _key = GlobalKey();

  void _addItem() {
    _items.insert(0, "Item ${_items.length + 1}");
    _key.currentState!.insertItem(
      0,
      duration: Duration(seconds: 1),
    );
  }

  void _removeItem(int index) {
    _key.currentState!.removeItem(index, (_, animation) {
      return SizeTransition(
        sizeFactor: animation,
        child: Card(
          margin: const EdgeInsets.all(10),
          color: Colors.red,
          child: ListTile(
            title: Text(
              "Deleted",
              style: TextStyle(
                fontSize: 24,
              ),
            ),
          ),
        ),
      );
    }, duration: Duration(seconds: 1));
    _items.removeAt(index);
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Animated List Animation"),
        actions: [
          IconButton(
            onPressed: _addItem,
            icon: Icon(Icons.add),
          ),
        ],
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: AnimatedList(
                key: _key,
                initialItemCount: 0,
                itemBuilder: (context, index, animation) {
                  return SizeTransition(
                    key: UniqueKey(),
                    sizeFactor: animation,
                    child: Card(
                      margin: const EdgeInsets.all(10),
                      color: Colors.orangeAccent,
                      child: ListTile(
                        title: Text(
                          _items[index],
                          style: TextStyle(fontSize: 24),
                        ),
                        trailing: IconButton(
                          icon: Icon(Icons.delete),
                          onPressed: () {
                            _removeItem(index);
                          },
                        ),
                      ),
                    ),
                  );
                }),
          ),
        ],
      ),
    );
  }
}
