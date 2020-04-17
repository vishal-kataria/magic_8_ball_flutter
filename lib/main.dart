import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.blue[400],
          appBar: AppBar(
              title: Text("Ask me anything"),
              backgroundColor: Colors.blue[900]),
          body: ball8project(),
        ),
      ),
    );

class ball8project extends StatefulWidget {
  @override
  _ball8projectState createState() => _ball8projectState();
}

class _ball8projectState extends State<ball8project> {
  int random = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: FlatButton(
        onPressed: () {
          setState(() {
            random = Random().nextInt(5) + 1;
          });
        },
        child: Image.asset('images/ball$random.png'),
      ),
    );
  }
}
