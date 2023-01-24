import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// (1) Zoom Animation or Example: Shape-shifting effect

class zoomanimation extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return zoom();
  }
}

class zoom extends State<zoomanimation> {
  bool _bigger = true;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          AnimatedContainer(
            width: _bigger ? 100 : 500,
            child: Image(
              fit: BoxFit.cover,
              image: NetworkImage(
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRxAzxfD82WfTjf46q2lfVPUnW45iiW0jWwTQ&usqp=CAU'),
            ),
            duration: Duration(seconds: 5),
            curve: Curves.easeInOutBack,
            decoration: BoxDecoration(
                gradient: RadialGradient(
                    colors: [Colors.purple, Colors.transparent],
                    stops: [_bigger ? 0.2 : 0.5, 1.0])),
          ),
          ElevatedButton(
            onPressed: () => setState(() {
              _bigger = !_bigger;
            }),
            child: Icon(Icons.star),
          ),
        ],
      ),
    );
  }
}