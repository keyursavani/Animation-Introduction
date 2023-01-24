// (7)  Example: Fade-in text effect

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class fadeintext extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      theme:  ThemeData(
          primarySwatch: Colors.deepOrange
      ),
      home:  Scaffold(
        appBar:  AppBar(
          title: Text("Fade-in Text Effect"),
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

 class MyHomePageState extends State<MyHomePage>{
   double opacity = 0.0;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
   return Center(
     child: Column(
       children: <Widget>[
         Image.network('https://raw.githubusercontent.com/flutter/website/master/src/images/owl.jpg'),
         TextButton(
           child: Text("Show Details",
             style: TextStyle(
               color: Colors.blueAccent,
           ),
           ),
           onPressed: () => setState(() {
             opacity = 1;
           }),
         ),
         AnimatedOpacity(
           duration: const Duration(seconds: 1),
           opacity: opacity,
          child:Column(
           children: <Widget>[
             Text("Type: Owl"),
             Text("Age: 39"),
             Text("Employment: None"),
           ],
         ),
         ),
       ],
     ),
   );
  }
 }