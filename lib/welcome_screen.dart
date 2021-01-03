import 'package:flutter/material.dart';
import 'package:splash_login_drawer/loginpage.dart';

class WelcomeScreen extends StatefulWidget {
  static const String id = "welcome_screen";
  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.redAccent,
      body: SafeArea(
        child: Column(mainAxisAlignment: MainAxisAlignment.center,
          children: [
          Center(
            child: Text("Welcome!",
            style: TextStyle(
              fontSize: 60.0,
              fontWeight:FontWeight.bold,
            ),),
          ),
            Center(
              child: Text("Let's use some Navigation Bars",
                style: TextStyle(
                  fontSize: 25.0,
                  fontWeight:FontWeight.bold,
                ),),
            ),
            SizedBox(height: 70.0),
            FittedBox(
              child: GestureDetector(
                onTap: () {
                Navigator.pushNamed(context, LogInPage.id);
                },
                child: Padding(
                  padding: EdgeInsets.only(bottom: 90.0),
                  child: Container(
                    padding:
                    EdgeInsets.symmetric(horizontal: 26, vertical: 16),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30.0),
                      color: Colors.blueAccent,
                    ),
                    child: Row(
                      children: [
                        Text(
                          "Let's Get Started",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        Icon(Icons.arrow_forward, color: Colors.white),
                      ],
                    ),
                  ),
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}

// Container(
// child: Column(
// mainAxisAlignment: MainAxisAlignment.spaceEvenly,
// children: [
// CircleAvatar(
// backgroundColor: Colors.redAccent,
// backgroundImage: AssetImage("images/message.png"),
// radius: 30.0,
// ),
// ],
// ),
// ),

// Text("Welcome",
// style: TextStyle(
// fontSize: 30.0,
// fontWeight: FontWeight.bold,
// ),
// ),
// Text("Lets Use Navigation Bars!",
// style: TextStyle(
// fontSize: 20.0
// ),
// ),
// Expanded(
// child: Column(
// mainAxisAlignment: MainAxisAlignment.spaceBetween,
// children: [
// FittedBox(
// child: GestureDetector(
// onTap: () {
// //Navigator.pushNamed(context, LogInPage.id);
// },
// child: Padding(
// padding: EdgeInsets.only(bottom: 90.0),
// child: Container(
// padding:
// EdgeInsets.symmetric(horizontal: 26, vertical: 16),
// decoration: BoxDecoration(
// borderRadius: BorderRadius.circular(30.0),
// color: Colors.blueAccent,
// ),
// child: Row(
// children: [
// Text(
// "Let's Get Started",
// style: TextStyle(
// fontWeight: FontWeight.bold,
// color: Colors.white,
// ),
// ),
// Icon(Icons.arrow_forward, color: Colors.white),
// ],
// ),
// ),
// ),
// ),
// ),
// ],
// ),
// ),