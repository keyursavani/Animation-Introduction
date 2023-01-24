// (8)  Example of hero animation

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class heroanimation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      color: Theme.of(context).primaryColor.withOpacity(0.25),
      // color: Colors.transparent,
      title: 'Navigatore Demo',
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // timeDilation = 5.0; // 1.0 means normal animation speed.
    return Scaffold(
      appBar: AppBar(
        title:Text('Main Screen'),
      ),
      body: GestureDetector(
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return DetailScreen();
          }));
        },
        child: Hero(
          tag: 'imageHero',
          child: Image.network('https://media-cdn.tripadvisor.com/media/photo-s/0f/c9/f4/df/photo5jpg.jpg'),
        ),
      ),
    );
  }
}

class DetailScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hero Animation"),
      ),
      body: GestureDetector(
        onTap: () {
          Navigator.pop(context);
        },
        child: Container(
          color: Theme.of(context).primaryColor.withOpacity(0.25),
          // color: Colors.grey,
          padding: const EdgeInsets.all(16.0),
          alignment: Alignment.topLeft,
          child: Hero(
            tag: 'imageHero',
            child:ClipOval(
              // clipper: MyClipper(),
             child:Image.network('https://media-cdn.tripadvisor.com/media/photo-s/0f/c9/f4/df/photo5jpg.jpg'),
          ),
          ),
        ),
      ),
    );
  }
}

class MyClipper extends CustomClipper<Rect>{
Rect getClip(Size size){
  return Rect.fromLTRB(0, 0, 200, 100);
}

  @override
  bool shouldReclip(oldClipper) {
    // TODO: implement shouldReclip
    throw UnimplementedError();
  }
// bool shouldReclip(oldClipper){
// }
}
