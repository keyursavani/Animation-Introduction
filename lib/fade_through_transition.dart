//(16) example of Fade through  transition animation

import 'package:animations/animations.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class fadethrought extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyHomePage();
  }
}

class MyHomePage extends State<fadethrought>{

  int _selectedIndex = 0;
  final List<Color> _colors = [Colors.white, Colors.red, Colors.yellow];

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      theme:  ThemeData(
          primarySwatch: Colors.teal
      ),
      home:  Scaffold(
        appBar: AppBar(
          title: Text("Shared axis animation"),
        ),
        body:PageTransitionSwitcher(
          duration: Duration(seconds: 2),
          transitionBuilder: (
              Widget child,
              Animation<double> primaryAnimation,
              Animation<double> secondaryAnimation,
              ) {
            return FadeThroughTransition(
              child: child,
              animation: primaryAnimation,
              secondaryAnimation: secondaryAnimation,
            );
          },
          child: Container(
            key: ValueKey<int>(_selectedIndex),
            color: _colors[_selectedIndex],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "Blue",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.business),
              label: "Red",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.school),
              label: "Yellow",
            ),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.amber[800],
          onTap: (int index) {
            setState(() {
              _selectedIndex = index;
            });
          },
        ),
      ),
    );
  }
}
