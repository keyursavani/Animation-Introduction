//(19) Example of Animated Gride Animation

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';

class animatedgrid extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
  return MyAppState();
  }
}

class MyAppState extends State<animatedgrid>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
   return MaterialApp(
     // debugShowCheckedModeBanner: false,
     home: Scaffold(
       body:  AnimationLimiter(
         child:GridView.count(crossAxisCount: 2,
           children: List.generate(25, (index){
             return AnimationConfiguration.staggeredGrid(
                 position: index, columnCount: 2,
                 child: ScaleAnimation(
                   duration: Duration(milliseconds: 350),
                   child: FadeInAnimation(
                     child: Padding(
                       padding: const EdgeInsets.all(8),
                       child: Container(
                         height: 200,
                         width: 200,
                         color: Colors.orangeAccent,
                         child: Center(
                           child: Text("Animated", style: TextStyle(
                             fontWeight: FontWeight.w800,
                             color: Colors.white,
                           ),
                           ),
                         ),
                       ),
                     ),
                   ),
                 ),
             );
           }),
         ),
          ),
        ),
   );
  }
}