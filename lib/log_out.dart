import 'package:flutter/material.dart';
import 'package:splash_login_drawer/welcome_screen.dart';

class LogOut extends StatefulWidget {
  static const String id = 'log_out';
  @override
  _LogOutState createState() => _LogOutState();
}

class _LogOutState extends State<LogOut> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.redAccent,
      body: Container(
        padding: EdgeInsets.only(top: 40.0,left:20.0 ,right: 20.0,bottom: 40.0),
        child: Column(
          children: [
            SizedBox(height: 100.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("You have successfully \nlogged out!!!",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            SizedBox(height: 350.0),
            GestureDetector(
              onTap: (){
                Navigator.pushNamed(context, WelcomeScreen.id);
              },
              child: Container(
                padding: EdgeInsets.all(16.0),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.blueAccent,
                ),
                child: Icon(Icons.arrow_back,
                color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

