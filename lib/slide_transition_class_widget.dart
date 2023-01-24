// (12) example of SlideTransition class widget

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class slidetransaction extends StatelessWidget {
  static String _title = 'Flutter Code Sample';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: Scaffold(
        appBar: AppBar(title: Text(_title)),
        body: Center(
          child: MyHomePage(),
        ),
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

  late final AnimationController controller;
  late final Animation<Offset> offsetAnimation;

void initState(){
  super.initState();
  controller = AnimationController(
    duration: const Duration(seconds: 2),
    vsync: this,
  )..repeat(reverse: true);
  offsetAnimation = Tween<Offset>(
    begin: Offset.zero,
    end: const Offset(1.5, 0.0),
  ).animate(CurvedAnimation(
    parent: controller,
    curve: Curves.elasticIn,
  ));
}
  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SlideTransition(
      position: offsetAnimation,
      child: const Padding(
        padding: EdgeInsets.all(8.0),
        child: FlutterLogo(size: 150.0),
      ),
    );
  }
}