// (15) Ecxample of Shared axis animation

import 'package:animations/animations.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class sharedaxis extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyHomePage();
  }
}

class MyHomePage extends State<sharedaxis>{

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
          // reverse: true, // uncomment to see transition in reverse
          transitionBuilder: (
              Widget child,
              Animation<double> primaryAnimation,
              Animation<double> secondaryAnimation,
              ) {
            return SharedAxisTransition(
              animation: primaryAnimation,
              secondaryAnimation: secondaryAnimation,
              transitionType: SharedAxisTransitionType.horizontal,
              child: child,
            );
          },
          child: Container(
              key: ValueKey<int>(_selectedIndex),
              color: _colors[_selectedIndex],
              child: Center(
                child: FlutterLogo(size: 300),
              )
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: " White ",
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
