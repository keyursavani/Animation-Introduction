// (2) Change Animation Color


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class cnageanimationcolor extends StatelessWidget {
  Color color = Colors.teal;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
   return MaterialApp(
     theme:  ThemeData(
         primarySwatch: Colors.deepOrange
     ),
     home: Scaffold(
       body: Center(
         child: ColorFiltered(
           child: Image(fit: BoxFit.cover,
               image: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSUTGSTdxFHczfuaGcZlx4N6jG1sDQQthMyEqB7Pl9x&s')
           ),
           colorFilter: ColorFilter.mode(color, BlendMode.modulate),
         ),
       ),
     ),
   );
  }
}