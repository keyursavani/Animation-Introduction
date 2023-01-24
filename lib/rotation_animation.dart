// (4) Example of Rotation Animation


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class rotationanimation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.teal),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Animation Tutorial"),
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

class MyHomePageState extends State<MyHomePage> with SingleTickerProviderStateMixin  {

  late final AnimationController _animationController;

  @override
  void initState() {
    super.initState();

    _animationController = AnimationController(
      duration:const Duration(seconds: 10),
      vsync: this,
    )..repeat(reverse: false);
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return  Stack(
      children: <Widget>[
        Align(
          alignment: Alignment.center,
          child: RotationTransition(
            child: GalaxyFitz(),
            alignment: Alignment.center,
            turns: _animationController,
          ),
        ),
      ],
    );
  }
}

class GalaxyFitz extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      child: Container(height:double.infinity ,width: double.infinity,
        child: Image(fit: BoxFit.cover,
            image: NetworkImage('http://wallpaperset.com/w/full/a/7/9/360960.jpg'),
        ),
      ),
    );
  }
}
