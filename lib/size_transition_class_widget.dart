// (11) example of SizeTransition class widget

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class sizetransaction extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
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

class MyHomePageState extends State<MyHomePage>
    with TickerProviderStateMixin {

  late final AnimationController  controller;
  late final Animation<double>    animation;

  void initState(){
    super.initState();
    controller = AnimationController(
      duration: const Duration(seconds: 3),
      vsync: this,
    )..repeat();
        animation = CurvedAnimation(
      parent: controller,
      curve: Curves.fastOutSlowIn,
    );
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizeTransition(
        sizeFactor: animation,
        axis: Axis.horizontal,
        axisAlignment: -1,
        child: const Center(
          child: FlutterLogo(size: 200.0),
        ),
      ),
    );
  }
}
