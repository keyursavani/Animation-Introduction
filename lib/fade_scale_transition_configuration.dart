// (17) example of FadeScaleTransitionConfiguration animation

import 'package:animations/animations.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class fadescale extends StatelessWidget {
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

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Fade Animation"),
        leading: IconButton(icon: Icon(Icons.menu),
          onPressed: (){
          },
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
                  transitionDuration: Duration(seconds: 2),
                  reverseTransitionDuration: Duration(seconds: 3),
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
        child:Text("Hello World!"),
        ),
    );
  }
}

class _CenteredFlutterLogo extends StatelessWidget {
  const _CenteredFlutterLogo();

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topRight,
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