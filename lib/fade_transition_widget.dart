// (10) example of FadeTransition widget


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class fadetransaction extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
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

  late final AnimationController controller;
  late final Animation<double> animation;

  @override
    void initState() {
      super.initState();

      controller = AnimationController(
        duration: const Duration(seconds: 3),
        vsync: this,
      )..repeat(reverse: true);
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
    return Container(
      color: Colors.white,
      child: FadeTransition(
        opacity: animation,
        child: const Padding(padding: EdgeInsets.all(8),
            child: FlutterLogo(),
        ),
      ),
    );
  }
}