import 'package:flutter/material.dart';
import 'package:splash_login_drawer/welcome_screen.dart';
import 'package:splash_login_drawer/loginpage.dart';
import 'package:splash_login_drawer/main_screen.dart';
import 'package:splash_login_drawer/screen_1.dart';
import 'package:splash_login_drawer/screen_2.dart';
import 'package:splash_login_drawer/log_out.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  static const String id = 'main';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Splash Screen & LoginPage",
      theme: ThemeData(
        primaryColor: Colors.white,
        floatingActionButtonTheme: FloatingActionButtonThemeData(
          elevation: 0,
          foregroundColor: Colors.white,
        ),
        accentColor: Colors.redAccent,
        textTheme: TextTheme(
          headline1: TextStyle(fontSize: 22.0,color: Colors.redAccent),
          headline2: TextStyle(fontSize: 24.0,color: Colors.red.shade600,fontWeight: FontWeight.w700),
          bodyText1: TextStyle(fontSize: 14.0,fontWeight: FontWeight.w400,color: Colors.blueAccent),
        ),
      ),
      home: WelcomeScreen(),

      routes: {
        WelcomeScreen.id: (context) => WelcomeScreen(),
        LogInPage.id: (context) => LogInPage(),
        MainScreen.id: (context) => MainScreen(),
        Screen1.id: (context) => Screen1(),
        Screen2.id: (context) => Screen2(),
        LogOut.id: (context) => LogOut(),
      },
    );
  }
}
