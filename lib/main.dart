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

class _MyHomePageState extends State<MyHomePage>{
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Stack(
        children: <Widget>[
          new Image.asset(
            'assets/wheather_bg.jpg',
            fit: BoxFit.cover,
          ),
          new ClipOval(
            child: new Image.asset(
              'assets/wheather_bg.jpg',
              fit: BoxFit.cover,
            ),
          )

        ],
      ),
    );
    // TODO: implement build
  }

}