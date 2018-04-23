import 'package:flutter/material.dart';
import 'dart:developer';

void main() => runApp(new Wheather());

class Wheather extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Wheather',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new MyHomePage(title: 'Wheather'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Stack(
        fit: StackFit.expand,
        children: <Widget>[
          new Image.asset(
            'assets/wheather_v1.jpeg',
            fit: BoxFit.cover,
          ),
          new ClipOval(
            clipper: new CircleClipper(
              radius: 140.0,
              offset: const Offset(40.0, 0.0),
            ),
            child: new Image.asset(
              'assets/rainy_blur.jpg',
              fit: BoxFit.cover,
            ),
          )
        ],
      ),
    );
  }
}

class CircleClipper extends CustomClipper<Rect>{
  final radius, offset;

  CircleClipper({this.radius, this.offset = const Offset(0.0, 0.0)});

  @override
  getClip(Size size) {
    debugPrint(size.toString());
    return new Rect.fromCircle(
      center: new Offset(0.0, size.height/2) + offset,
      radius: radius,
    );
  }

  @override
  bool shouldReclip(CustomClipper oldClipper) {
    // TODO: implement shouldReclip
    return true;
  }
}
