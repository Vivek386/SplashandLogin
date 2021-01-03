import 'package:flutter/material.dart';
import 'package:splash_login_drawer/main_screen.dart';

class LogInPage extends StatefulWidget {
  static const String id = "loginpage";
  @override
  _LogInPageState createState() => _LogInPageState();
}

class _LogInPageState extends State<LogInPage> {

  final scaffoldkey = GlobalKey<ScaffoldState>();
  GlobalKey<FormState> globalFormKey = GlobalKey<FormState>();
  bool hidePassword = true;
  //LoginRequestModel requestModel;
  bool isApiCallProcess = false;

  @override
  void initState() {
    super.initState();
    //requestModel = new LoginRequestModel();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.redAccent,
      key: scaffoldkey,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  width: double.infinity,
                  padding: EdgeInsets.symmetric(vertical: 30.0,horizontal: 20.0),
                  margin: EdgeInsets.symmetric(vertical: 85.0,horizontal: 20.0),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(color: Colors.redAccent.withOpacity(0.2),
                          offset: Offset(0,10),
                          blurRadius: 20.0,
                        ),
                      ]
                  ),
                  child: Form(
                    key: globalFormKey,
                    child: Column(
                      children: [
                        SizedBox(height: 25.0),
                        Text("Login", style: Theme.of(context).textTheme.headline2,
                        ),
                        SizedBox(height: 20.0),
                        TextFormField(
                          keyboardType: TextInputType.emailAddress,
                          //onSaved: (input) => requestModel.email = input,
                          validator: (input)=> !input.contains("@") ? "Email Id should be valid" : null,
                          decoration: InputDecoration(hintText: "Email Address",
                              enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: Theme.of(context).accentColor,
                              ),
                              ),
                              prefixIcon: Icon(Icons.email,color: Colors.red.shade600)
                          ),
                        ),
                        SizedBox(height: 20.0),
                        TextFormField(
                          keyboardType: TextInputType.text,
                          //onSaved: (input) => requestModel.password = input,
                          validator: (input)=> input.length < 3 ? "Password should be more than 3 characters" : null,obscureText: hidePassword,
                          decoration: InputDecoration(hintText: "Password",
                            enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: Theme.of(context).accentColor,
                            ),
                            ),
                            prefixIcon: Icon(Icons.lock ,color: Colors.red.shade600),
                            suffixIcon: IconButton(
                              onPressed: (){
                                setState(() {
                                  hidePassword = ! hidePassword;
                                });
                              },
                              color: Theme.of(context).accentColor.withOpacity(0.4),
                              icon: Icon(hidePassword ? Icons.visibility_off : Icons.visibility),
                            ),
                          ),
                        ),
                        SizedBox(height: 30.0),
                        FlatButton(
                          padding: EdgeInsets.symmetric(vertical: 12.0,horizontal: 80.0),
                          onPressed: (){
                            if(validateAndSave()){
                              //print(requestModel.toJson());
                              Navigator.pushNamed(context, MainScreen.id);
                            }

                          },
                          child: Text("Login",
                            style: TextStyle(
                                color: Colors.white),),
                          color: Colors.red.shade600,
                          shape: StadiumBorder(),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
  bool validateAndSave() {
    final form = globalFormKey.currentState;
    if(form.validate()){
      form.save();
      return true;
    }
    return false;
  }
}
