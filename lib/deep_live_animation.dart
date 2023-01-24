// (6)  Example of deep dive Animation

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class deepliveanimation extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
   return MaterialApp(
     theme:  ThemeData(
       primarySwatch:  Colors.deepOrange
     ),
     home: Scaffold(
       appBar: AppBar(
         title: Text("Animation"),
       ),
       body: MyHomePage(),
     ),
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

  class MyHomePageState extends State<MyHomePage>
      with SingleTickerProviderStateMixin {

    late final AnimationController _controller;

    int i = 0;

    @override
    void initState() {
      super.initState();

      _controller = AnimationController(
        vsync: this,
        duration: const Duration(seconds: 5),
      );
      _controller.addListener(_update);
      _controller.forward();
    }

    @override
    void dispose() {
      _controller.dispose();
      super.dispose();
    }

    void _update() {
      setState(() {
        i = (_controller.value * 299792458).round();
      });
    }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
        child: Text('$i m/s', style: TextStyle(
          color: Colors.black
        ),),
    );
  }
  }