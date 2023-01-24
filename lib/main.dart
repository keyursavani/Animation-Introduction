import 'dart:math';

import 'package:animation_introduction/rotation_animation.dart';
import 'package:animation_introduction/shared_axis_animation.dart';
import 'package:animation_introduction/size_transition_class_widget.dart';
import 'package:animation_introduction/slide_transition_class_widget.dart';
import 'package:animation_introduction/tween_animation.dart';
import 'package:animation_introduction/zoom_animation.dart';
import 'package:animations/animations.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/physics.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';

import 'animated_builder_animation.dart';
import 'animated_gride_animation.dart';
import 'animated_list_animation.dart';
import 'change_animation_color.dart';
import 'clipRect_widget_and_hero_animation_widget.dart';
import 'container_transform_(open container)_animation.dart';
import 'custome_clliper_package.dart';
import 'deep_live_animation.dart';
import 'example_which_is_givin_in_tutorial.dart';
import 'fade_in_text_effect.dart';
import 'fade_pattern.dart';
import 'fade_scale_transition_configuration.dart';
import 'fade_through_transition.dart';
import 'fade_transition_widget.dart';
import 'hero_animation.dart';

void main() {
  runApp(Myapp());
  
}
class Myapp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
   return MaterialApp(
     theme: ThemeData(
       primarySwatch: Colors.blueGrey
     ),
     home: MyHomePage(),
   );
  }
}

class MyHomePage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyHomePageState();
  }
}
class MyHomePageState extends State<MyHomePage>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
   return Scaffold(
     appBar: AppBar(
       title: Text("Animation Introduction"),
     ),
     body: Center(
       child: Container(
         alignment: Alignment.center,
         child: Column(
           children: <Widget>[
             Expanded(
                 child:Row(
                   children: <Widget>[
                     Expanded(
                       child:Padding(
                         padding: const EdgeInsets.only(top:15,left: 5),
                         child: GestureDetector(
                           onTap: () {
                             Navigator.push(context,
                                 MaterialPageRoute(builder: (context) => zoomanimation()));
                           },
                           child: Container(
                             padding: const EdgeInsets.all(8),
                             child: Text("Zoom Animation"),
                             decoration: BoxDecoration(
                                 color: Colors.blueGrey,
                                 borderRadius: BorderRadius.all(Radius.circular(5.0))
                             ),
                           ),
                         ),
                       ),
                     ),
                     Expanded(
                       child:Padding(
                         padding: const EdgeInsets.only(top:15,left: 5),
                         child: GestureDetector(
                           onTap: () {
                             Navigator.push(context,
                                 MaterialPageRoute(builder: (context) => cnageanimationcolor()));
                           },
                           child: Container(
                             padding: const EdgeInsets.all(8),
                             child: Text("Change Animation Color"),
                             decoration: BoxDecoration(
                                 color: Colors.blueGrey,
                                 borderRadius: BorderRadius.all(Radius.circular(5.0))
                             ),
                           ),
                         ),
                       ),
                     ),
                     Expanded(
                       child:Padding(
                         padding: const EdgeInsets.only(top:15,left: 5 ,right: 5),
                         child: GestureDetector(
                           onTap: () {
                             Navigator.push(context,
                                 MaterialPageRoute(builder: (context) => tweenanimation()));
                           },
                           child: Container(
                             padding: const EdgeInsets.all(8),
                             child: Text("Tween Animation"),
                             decoration: BoxDecoration(
                                 color: Colors.blueGrey,
                                 borderRadius: BorderRadius.all(Radius.circular(5.0))
                             ),
                           ),
                         ),
                       ),
                     ),
                   ],
                 ),
             ),
             Expanded(
                 child: Row(
                   children: <Widget>[
                     Expanded(
                       child: Padding(
                         padding: const EdgeInsets.only(left: 10),
                         child: ElevatedButton(
                           onPressed: () {
                             Navigator.push(
                               context,
                               MaterialPageRoute(builder: (context) {
                                 return rotationanimation();
                               }),
                             );
                           },
                           child: Text("Rotation Animation"),
                           style: ElevatedButton.styleFrom(
                             textStyle: TextStyle(fontSize: 15 ,color: Colors.black),
                             backgroundColor: Colors.blueGrey,
                           ),
                         ),
                       ),
                     ),
                     Expanded(
                       child: Padding(
                         padding: const EdgeInsets.only(left: 10),
                         child: ElevatedButton(
                           onPressed: () {
                             Navigator.push(
                               context,
                               MaterialPageRoute(builder: (context) {
                                 return animatedbuilder();
                               }),
                             );
                           },
                           child: Text("Animated Builder"),
                           style: ElevatedButton.styleFrom(
                             textStyle: TextStyle(fontSize: 15 ,color: Colors.black),
                             backgroundColor: Colors.blueGrey,
                           ),
                         ),
                       ),
                     ),
                     Expanded(
                       child: Padding(
                         padding: const EdgeInsets.only(left: 10 , right: 7),
                         child: ElevatedButton(
                           onPressed: () {
                             Navigator.push(
                               context,
                               MaterialPageRoute(builder: (context) {
                                 return deepliveanimation();
                               }),
                             );
                           },
                           child: Text("Deep live Animation"),
                           style: ElevatedButton.styleFrom(
                             textStyle: TextStyle(fontSize: 15 ,color: Colors.black),
                             backgroundColor: Colors.blueGrey,
                           ),
                         ),
                       ),
                     ),
                   ],
                 ),
             ),
             Expanded(
                 child: Row(
                   children: <Widget>[
                     Expanded(
                       child: Padding(
                         padding: const EdgeInsets.only(left: 10),
                         child: ElevatedButton(
                           onPressed: () {
                             Navigator.push(
                               context,
                               MaterialPageRoute(builder: (context) {
                                 return fadeintext();
                               }),
                             );
                           },
                           child: Text("Fade-in text effect"),
                           style: ElevatedButton.styleFrom(
                             textStyle: TextStyle(fontSize: 15 ,color: Colors.black),
                             backgroundColor: Colors.blueGrey,
                           ),
                         ),
                       ),
                     ),
                     Expanded(
                       child: Padding(
                         padding: const EdgeInsets.only(left: 10),
                         child: ElevatedButton(
                           onPressed: () {
                             Navigator.push(
                               context,
                               MaterialPageRoute(builder: (context) {
                                 return heroanimation();
                               }),
                             );
                           },
                           child: Text("hero animation"),
                           style: ElevatedButton.styleFrom(
                             textStyle: TextStyle(fontSize: 15 ,color: Colors.black),
                             backgroundColor: Colors.blueGrey,
                           ),
                         ),
                       ),
                     ),
                     Expanded(
                       child: Padding(
                         padding: const EdgeInsets.only(left: 10,right: 7),
                         child: ElevatedButton(
                           onPressed: () {
                             Navigator.push(
                               context,
                               MaterialPageRoute(builder: (context) {
                                 return cliprectanimation();
                               }),
                             );
                           },
                           child: Text("ClipRect Widget and hero widget"),
                           style: ElevatedButton.styleFrom(
                             textStyle: TextStyle(fontSize: 15 ,color: Colors.black),
                             backgroundColor: Colors.blueGrey,
                           ),
                         ),
                       ),
                     ),
                   ],
                 ),
             ),
             Expanded(
                 child: Row(
                   children: <Widget>[
                     Expanded(
                       child: Padding(
                         padding: const EdgeInsets.only(left: 10,right: 7),
                         child: ElevatedButton(
                           onPressed: () {
                             Navigator.push(
                               context,
                               MaterialPageRoute(builder: (context) {
                                 return fadetransaction();
                               }),
                             );
                           },
                           child: Text("FadeTransition widget"),
                           style: ElevatedButton.styleFrom(
                             textStyle: TextStyle(fontSize: 15 ,color: Colors.black),
                             backgroundColor: Colors.blueGrey,
                           ),
                         ),
                       ),
                     ),
                     Expanded(
                       child: Padding(
                         padding: const EdgeInsets.only(left: 10,right: 7),
                         child: ElevatedButton(
                           onPressed: () {
                             Navigator.push(
                               context,
                               MaterialPageRoute(builder: (context) {
                                 return sizetransaction();
                               }),
                             );
                           },
                           child: Text("SizeTransition class widget"),
                           style: ElevatedButton.styleFrom(
                             textStyle: TextStyle(fontSize: 15 ,color: Colors.black),
                             backgroundColor: Colors.blueGrey,
                           ),
                         ),
                       ),
                     ),
                     Expanded(
                       child: Padding(
                         padding: const EdgeInsets.only(left: 10,right: 7),
                         child: ElevatedButton(
                           onPressed: () {
                             Navigator.push(
                               context,
                               MaterialPageRoute(builder: (context) {
                                 return slidetransaction();
                               }),
                             );
                           },
                           child: Text("SlideTransition class widget"),
                           style: ElevatedButton.styleFrom(
                             textStyle: TextStyle(fontSize: 15 ,color: Colors.black),
                             backgroundColor: Colors.blueGrey,
                           ),
                         ),
                       ),
                     ),
                   ],
                 ),
             ),
             Expanded(
                 child: Row(
                   children: <Widget>[
                     Expanded(
                       child: Padding(
                         padding: const EdgeInsets.only(left: 10,right: 7),
                         child: ElevatedButton(
                           onPressed: () {
                             Navigator.push(
                               context,
                               MaterialPageRoute(builder: (context) {
                                 return tutorialexample();
                               }),
                             );
                           },
                           child: Text("Example given in tutorial"),
                           style: ElevatedButton.styleFrom(
                             textStyle: TextStyle(fontSize: 15 ,color: Colors.black),
                             backgroundColor: Colors.blueGrey,
                           ),
                         ),
                       ),
                     ),
                     Expanded(
                       child: Padding(
                         padding: const EdgeInsets.only(left: 10,right: 7),
                         child: ElevatedButton(
                           onPressed: () {
                             Navigator.push(
                               context,
                               MaterialPageRoute(builder: (context) {
                                 return opencontainer();
                               }),
                             );
                           },
                           child: Text("Container transform (open container)"),
                           style: ElevatedButton.styleFrom(
                             textStyle: TextStyle(fontSize: 15 ,color: Colors.black),
                             backgroundColor: Colors.blueGrey,
                           ),
                         ),
                       ),
                     ),
                     Expanded(
                       child: Padding(
                         padding: const EdgeInsets.only(left: 10,right: 7),
                         child: ElevatedButton(
                           onPressed: () {
                             Navigator.push(
                               context,
                               MaterialPageRoute(builder: (context) {
                                 return sharedaxis();
                               }),
                             );
                           },
                           child: Text("Shared axis animation"),
                           style: ElevatedButton.styleFrom(
                             textStyle: TextStyle(fontSize: 15 ,color: Colors.black),
                             backgroundColor: Colors.blueGrey,
                           ),
                         ),
                       ),
                     ),
                   ],
                 ),
             ),
             Expanded(
                 child: Row(
                   children: [
                     Expanded(
                       child: Padding(
                         padding: const EdgeInsets.only(left: 10,right: 7),
                         child: ElevatedButton(
                           onPressed: () {
                             Navigator.push(
                               context,
                               MaterialPageRoute(builder: (context) {
                                 return fadethrought();
                               }),
                             );
                           },
                           child: Text("fade through  transition"),
                           style: ElevatedButton.styleFrom(
                             textStyle: TextStyle(fontSize: 15 ,color: Colors.black),
                             backgroundColor: Colors.blueGrey,
                           ),
                         ),
                       ),
                     ),
                     Expanded(
                       child: Padding(
                         padding: const EdgeInsets.only(left: 10,right: 7),
                         child: ElevatedButton(
                           onPressed: () {
                             Navigator.push(
                               context,
                               MaterialPageRoute(builder: (context) {
                                 return fadescale();
                               }),
                             );
                           },
                           child: Text("FadeScaleTransitionConfiguration"),
                           style: ElevatedButton.styleFrom(
                             textStyle: TextStyle(fontSize: 15 ,color: Colors.black),
                             backgroundColor: Colors.blueGrey,
                           ),
                         ),
                       ),
                     ),
                     Expanded(
                       child: Padding(
                         padding: const EdgeInsets.only(left: 10,right: 7),
                         child: ElevatedButton(
                           onPressed: () {
                             Navigator.push(
                               context,
                               MaterialPageRoute(builder: (context) {
                                 return fadepattern();
                               }),
                             );
                           },
                           child: Text("fade pattern"),
                           style: ElevatedButton.styleFrom(
                             textStyle: TextStyle(fontSize: 15 ,color: Colors.black),
                             backgroundColor: Colors.blueGrey,
                           ),
                         ),
                       ),
                     ),
                   ],
                 ),
             ),
             Expanded(
                 child: Row(
                   children: [
                     Expanded(
                       child: Padding(
                         padding: const EdgeInsets.only(left: 10,right: 7),
                         child: ElevatedButton(
                           onPressed: () {
                             Navigator.push(
                               context,
                               MaterialPageRoute(builder: (context) {
                                 return anumatedlist();
                               }),
                             );
                           },
                           child: Text("animated list"),
                           style: ElevatedButton.styleFrom(
                             textStyle: TextStyle(fontSize: 15 ,color: Colors.black),
                             backgroundColor: Colors.blueGrey,
                           ),
                         ),
                       ),
                     ),
                     Expanded(
                       child: Padding(
                         padding: const EdgeInsets.only(left: 10,right: 7),
                         child: ElevatedButton(
                           onPressed: () {
                             Navigator.push(
                               context,
                               MaterialPageRoute(builder: (context) {
                                 return animatedgrid();
                               }),
                             );
                           },
                           child: Text("Animated Gride"),
                           style: ElevatedButton.styleFrom(
                             textStyle: TextStyle(fontSize: 15 ,color: Colors.black),
                             backgroundColor: Colors.blueGrey,
                           ),
                         ),
                       ),
                     ),
                     Expanded(
                       child: Padding(
                         padding: const EdgeInsets.only(left: 10,right: 7),
                         child: ElevatedButton(
                           onPressed: () {
                             Navigator.push(
                               context,
                               MaterialPageRoute(builder: (context) {
                                 return clliperpackage();
                               }),
                             );
                           },
                           child: Text("custome clliper"),
                           style: ElevatedButton.styleFrom(
                             textStyle: TextStyle(fontSize: 15 ,color: Colors.black),
                             backgroundColor: Colors.blueGrey,
                           ),
                         ),
                       ),
                     ),
                   ],
                 ),
             ),
           ],
         ),
       ),
     ),
   );
  }
}