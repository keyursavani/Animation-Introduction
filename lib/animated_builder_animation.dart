// (5) Example of AnimatedBuilder Animation

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class animatedbuilder extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      theme: ThemeData(
          primarySwatch:Colors.deepOrange
      ),
      home:  Scaffold(
        body: MyHomePage(),
      ),
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

class MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {

  final Image starsBackground = Image(fit: BoxFit.cover,height: double.infinity,width: double.infinity,
    image: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSeD3RydyEA4u8qy7o74V9674lhQ-Ch61WXcQ&usqp=CAU'),
  );

  final Image ufo = Image( height: 250,width: 250,
    image:  NetworkImage('https://cdn-icons-png.flaticon.com/512/190/190276.png'),);

  late final AnimationController _animation;

  @override
  void initState() {
    super.initState();

    _animation = AnimationController(
      duration: const Duration(seconds:10),
      vsync: this,
    )..repeat(reverse: true);
  }
  @override
  void dispose() {
    _animation.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
   return
   // Using AnimatedBuilder
      Stack(
        alignment: AlignmentDirectional.center,
        children: <Widget>[
          starsBackground,
          AnimatedBuilder(
            animation: _animation,
            builder: (_, __) {
              return ClipPath(
                clipper: const BeamClipper(),
                child: Container(
                  height: 1000,
                  decoration: BoxDecoration(
                    gradient: RadialGradient(
                      radius: 1.5,
                      colors: [
                        Colors.yellow,
                        Colors.transparent,
                      ],
                      stops: [0, _animation.value],
                    ),
                  ),
                ),
              );
            },
          ),
          ufo,
        ],
      );
  }


}

class BeamClipper extends CustomClipper<Path> {
  const BeamClipper();


  @override
  getClip(Size size) {
    var controlPoint = Offset(size.width / 2, size.height / 2);
    var endPoint = Offset(size.width, size.height);
    return Path()
    // for bottom shadow light
      // ..lineTo(size.width/2, size.height/2)
      // ..lineTo(size.width, size.height)
      // ..lineTo(0, size.height)
      // ..lineTo(size.width / 2, size.height / 2)
      // ..close();
    // For circle light
    ..lineTo(size.width, 0.0)
    ..lineTo(size.width, size.height)
    ..lineTo(0.0, size.height)
    ..close();
    // home  shape pattern
    //   ..lineTo(0, size.height * 0.7)
    //   ..quadraticBezierTo(size.width / 2, 0, size.width, size.height * 0.7)
    //   ..lineTo(size.width, size.height)
    //   ..lineTo(0, size.height)
    //   ..close();
// half cricle
//       ..moveTo(size.width / 2, 0)
//       ..arcToPoint(Offset(size.width, size.height),
//           radius: Radius.circular(12))
//       ..lineTo(0, size.height)
//       ..arcToPoint(
//         Offset(size.width / 2, 0),
//         radius: Radius.circular(12),
//       )
//       ..close();

      // ..lineTo(0, size.height) // Add line p1p2
      // ..lineTo(size.width, size.height) // Add line p2p3
      // ..close();

      // ..moveTo(size.width/2, 0)   // move path point to (w/2,0)
      // ..lineTo(0, size.width)
      // ..lineTo(size.width, size.height)
      // ..close();

      // ..moveTo(size.width / 2, 0)
      // ..lineTo(0, size.height)
      // ..quadraticBezierTo(
      //     controlPoint.dx, controlPoint.dy, endPoint.dx, endPoint.dy)
      // ..close();

   // ..lineTo(size.width, 0.0)
   //  ..lineTo(size.width * 0.75, size.height)
   //  ..lineTo(size.width * 0.25, size.height)
   //  ..close();


  }

  // Return false always because we always clip the same area.
  @override
  bool shouldReclip(CustomClipper oldClipper) => false;
}