//  (3)  Example of TweenAnimation

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class tweenanimation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      theme:  ThemeData(
          primarySwatch: Colors.deepOrange
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Animation Introduction"),
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

class  MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {

  final Image starsBackground = Image(fit: BoxFit.cover, width: 1000,
      image: NetworkImage(
          'https://earthsky.org/upl/2022/04/Milky-Way-Juan-Cipriano-Esquer-Delgado-at-Campo-La-Salina-Sonora-Mexico-Mar-29-2022-e1649171600820.jpg')
  );

  static final colorTween = ColorTween(begin: Colors.white, end: Colors.red);
  Color _newColor = Colors.red;

  late final AnimationController controller;

  void initState(){
    super.initState();
    AnimationController controller = AnimationController(
        duration: const Duration(milliseconds: 500),
         vsync: this,
    );
}

  @override
  Widget build(BuildContext context) {
    return
      Text("Nothing");
    //   TweenAnimationBuilder<Color>(
    //   tween: ColorTween,
    //   duration: Duration(seconds: 2),
    //   builder: (_, Color color, __) {
    //     return ColorFiltered(
    //       child: Image.asset('assets/sun.png'),
    //       colorFilter: ColorFilter.mode(color, BlendMode.modulate),
    //     );
    //   },
    // );
  }
}
