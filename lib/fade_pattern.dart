// // (17) example of fade pattern animation

import 'package:animations/animations.dart';
import 'package:flutter/material.dart';

class fadepattern extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.deepOrange
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

class MyHomePageState extends State<MyHomePage> with SingleTickerProviderStateMixin {
  late final AnimationController controller;
  late final  Animation<double> animation;
  @override
  void initState(){
    super.initState();
    controller = AnimationController(
      vsync: this,
      duration:Duration(seconds: 1),
    );
    animation = CurvedAnimation(
        parent:controller,
        curve: Curves.easeIn
    );controller.forward();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Fade Animation"),
        leading: IconButton(icon: Icon(Icons.menu),
          onPressed: Fade,
        ),
        actions: [
          IconButton(
            onPressed: (){},
            icon: Icon(Icons.search),
          ),
          IconButton(
            onPressed: () {
              showModal(
                context: context,
                configuration: FadeScaleTransitionConfiguration(
                  transitionDuration: Duration(seconds: 1),
                  reverseTransitionDuration: Duration(seconds: 1),
                ),
                builder: (BuildContext context) {
                  return _CenteredFlutterLogo();
                },
              );
            },
           icon: Icon(Icons.more_vert),
          ),
        ],
      ),
      body: Center(
        child:Text("Hello World"),
        ),
    );
  }
  void Fade(){
     Center(
      child:FadeTransition(
      opacity: animation,
      child:  Container(
        child: Text("Hello World  !",style: TextStyle(
          fontSize: 30,
        ),
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(10),
          ),
        ),
      ),
      ),
    );
  }
}

class FadeItem extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
   return FadeItemState();
  }
}

class FadeItemState extends State<FadeItem>
    with SingleTickerProviderStateMixin{

  late final AnimationController controller;
  late final  Animation<double> animation;

  @override
  void initState(){
    super.initState();
    controller = AnimationController(
      vsync: this,
      duration:Duration(seconds: 1),
    );
    animation = CurvedAnimation(
        parent:controller,
        curve: Curves.easeIn
    );controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      child: FadeTransition(
        opacity: animation,
        child:  Container(
          child: Text("Hello World  !",style: TextStyle(
            fontSize: 30,
          ),
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(10),
            ),
          ),
        ),
      ),
    );
  }
}

class _CenteredFlutterLogo extends StatelessWidget {
  const _CenteredFlutterLogo();
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: SizedBox(
        width: 250,
        height: 250,
        child: const Material(
          child: Center(
            child: FlutterLogo(size: 250),
          ),
        ),
      ),
    );
  }
}