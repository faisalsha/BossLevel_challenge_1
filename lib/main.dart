import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MaterialApp(
    home:Top()
  ));
}

class Top extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: Text('Ask Me Anything'),
        centerTitle: true,
      ),
      body: Ball(),
    );
  }
}

class Ball extends StatefulWidget {
  @override
  _BallState createState() => _BallState();
}

class _BallState extends State<Ball> {
  int BallNumber=1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: FlatButton(
        onPressed: (){
          setState(() {
            BallNumber=Random().nextInt(5) + 1;
          });
        },

        child: Image.asset('images/ball$BallNumber.png'),
      ),
    );
  }
}
