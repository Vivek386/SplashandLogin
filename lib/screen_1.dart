import 'package:flutter/material.dart';


class Screen1 extends StatefulWidget {
  static const String id = 'screen_1';
  @override
  _Screen1State createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.redAccent,
      appBar: AppBar(
        title: Text("Screen 1"),
        backgroundColor: Colors.redAccent,
      ),
      body: Container(
        child: Center(
          child: Text("Screen 1",
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

