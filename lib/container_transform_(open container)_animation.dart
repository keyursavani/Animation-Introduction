//(14) Example of Container transform (open container) animation

import 'package:animations/animations.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class opencontainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.teal),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Open Container Animation"),
        ),
        body: Center(
          child: Text("Home Page!"),
        ),
        floatingActionButton: OpenContainer(
          transitionDuration: Duration(seconds: 2),
          openBuilder: (context, closeWidget) {
            return DetaiScreen();
          },
          closedBuilder: (context, openWidget) {
            return FloatingActionButton(
              onPressed: openWidget,
            );
          },
        ),
      ),
    );
  }
}

class DetaiScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Second Screen"),
      ),
      body: Center(
        child: Text("This is destination screen"),
      ),
    );
  }
}
