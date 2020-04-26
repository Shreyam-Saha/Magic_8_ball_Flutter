import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
      MaterialApp(
        home: Scaffold(
            backgroundColor: Colors.blueAccent,
            appBar: AppBar(
              backgroundColor: Colors.blue.shade400,
              title: Text('Magic 8 Ball'),
            ),
            body: MagicBall()),
      ),
    );

class MagicBall extends StatefulWidget {
  @override
  _MagicBallState createState() => _MagicBallState();
}

class _MagicBallState extends State<MagicBall> {
  int bface = 3;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
              onPressed: () {
                setState(() {
                  bface = Random().nextInt(5) + 1;
                  print('The Ball was pressed');
                });
              },
              child: Image(
                image: AssetImage('images/ball$bface.png'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
