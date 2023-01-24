// (9) Example of ClipRect Widget and hero animation widget

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class cliprectanimation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text("ClipRect Animation"),
        ),
        body: MyHomepage(),
      ),
    );
  }
}

class MyHomepage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyHomePageState();
  }
}

class MyHomePageState extends State<MyHomepage> {
  late BorderRadius borderRadius;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    const TextStyle style = TextStyle(color: Colors.white);
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Container(
            padding: const EdgeInsets.only(top: 25),
            alignment: Alignment.center,
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) {
                    return DetailScreen();
                  }),
                );
              },
              child: Image.network(width:300, height: 200,fit: BoxFit.cover,
                  'https://media-cdn.tripadvisor.com/media/photo-s/0f/c9/f4/df/photo5jpg.jpg'),
            ),
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(30.0),
            child: Container(
              alignment: Alignment.center,
              constraints: const BoxConstraints(
                maxWidth: 300,
                maxHeight: 100,
              ),
              color: Colors.green,
              child: GestureDetector(
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) {
                      return DetailScreen();
                    }),
                  );
                },
                child: Text("ClipRect!"),
              ),
            ),
          ),
          ClipRRect(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(10.0),
              topRight: Radius.circular(20.0),
              bottomRight: Radius.circular(30.0),
              bottomLeft: Radius.circular(40.0),
            ),
            child: Container(
              alignment: Alignment.center,
              constraints: const BoxConstraints(
                maxWidth: 300,
                maxHeight: 100,
              ),
              color: Colors.purple,
              child: GestureDetector(
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) {
                      return DetailScreen();
                    }),
                  );
                },
                child: Text("ClipRect!"),
              ),
            ),
          ),
        ],
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
            child: ClipOval(
              // clipper: MyClipper(),
              child: Image.network(
                  'https://media-cdn.tripadvisor.com/media/photo-s/0f/c9/f4/df/photo5jpg.jpg'),
            ),
          ),
        ),
      ),
    );
  }
}