import 'package:flutter/material.dart';
import 'package:splash_login_drawer/screen_1.dart';
import 'package:splash_login_drawer/screen_2.dart';
import 'package:splash_login_drawer/log_out.dart';

class MainScreen extends StatefulWidget {
  static const String id = 'main_screen';
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.redAccent,
      appBar: AppBar(
        title: Text("Home"),
        backgroundColor: Colors.redAccent,
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              accountName: Text("Vivek Kumar Mahto"),
              accountEmail: Text("vivek@gmail.com"),
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage("images/man.jpg"),
              ),
            ),
            ListTile(
              title: Text("Home"),
              trailing: Icon(Icons.arrow_upward),
              onTap: (){
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text("Screen1"),
              trailing: Icon(Icons.arrow_forward),
              onTap: (){
                Navigator.pushNamed(context, Screen1.id);
              },
            ),
            ListTile(
              title: Text("Screen2"),
              trailing: Icon(Icons.arrow_forward),
              onTap: (){
                Navigator.pushNamed(context, Screen2.id);
              },
            ),
          ],
        ),
      ),
      body: Container(
        padding: EdgeInsets.only(left: 20.0,right: 20.0,top: 25.0,bottom: 85.0),
        child: Column(
          children: [
            Row(mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("My New Year Resolutions!",
                style: TextStyle(
                  fontSize: 29.0,
                  fontWeight: FontWeight.bold,
                ),),
              ],
            ),
            SizedBox(height: 20.0),
            Expanded(
              child: Container(
                child: ListView(
                  children: [
                    ListTile(
                      title: Text("Get a Job!"),
                      trailing: Icon(Icons.check_box_outline_blank),
                    ),
                    ListTile(
                      title: Text("Go to Ladakh!"),
                      trailing: Icon(Icons.check_box_outline_blank),
                    ),
                    ListTile(
                      title: Text("Try a Tuna!"),
                      trailing: Icon(Icons.check_box_outline_blank),
                    ),
                    ListTile(
                      title: Text("Trip to Kheerganga!"),
                      trailing: Icon(Icons.check_box_outline_blank),
                    ),
                    ListTile(
                      title: Text("Improve Personality!"),
                      trailing: Icon(Icons.check_box_outline_blank),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 15.0),
            FlatButton(
                onPressed: (){
                  Navigator.pushNamed(context, LogOut.id);
                },
                child: Text("LOG OUT",
                style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w900
                ),
                ),
              color: Colors.red,
              shape: StadiumBorder(),
            ),
          ],
        ),
      ),
    );
  }
}
