import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
      MaterialApp(home: myOwn()),
    );

class myOwn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blueGrey.shade900,
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text('What to do?'),
        ),
        body: ball());
  }
}

class ball extends StatefulWidget {
  @override
  _ballState createState() => _ballState();
}

class _ballState extends State<ball> {
  int ballnum = 1;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10.0),
      alignment: Alignment.center,
      child: FlatButton(
        onPressed: () {
          setState(() {
            ballnum = Random().nextInt(5) + 1;
          });
        },
        child: Image(
            width: 350.0,
            height: 350.0,
            image: AssetImage('images/ball$ballnum.png')),
      ),
    );
  }
}
