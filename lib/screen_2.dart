import 'package:flutter/material.dart';

class Screen2 extends StatefulWidget {
  static const String id = 'screen_2';
  @override
  _Screen2State createState() => _Screen2State();
}

class _Screen2State extends State<Screen2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.redAccent,
      appBar: AppBar(
        title: Text("Screen 2"),
        backgroundColor: Colors.redAccent,
      ),
      body: Container(
        child: Center(
          child: Text("Screen 2",
            style: TextStyle(
              color: Colors.blue,
              fontSize: 30.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}

