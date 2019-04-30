import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

class Authen extends StatefulWidget {
  @override
  _AuthenState createState() => _AuthenState();
}

class _AuthenState extends State<Authen> {
  Widget emailTextFormField() {
    return TextFormField(
      decoration:
          InputDecoration(labelText: "Email : ", hintText: "your@Email.com"),
    );
  }

  Widget passwordTextFormField() {
    return TextFormField(
      obscureText: true,
      decoration:
          InputDecoration(labelText: "Password : ", hintText: "yourPassword"),
    );
  }

  Widget signinButtonFormField() {
    shape: RoundedRectangleBorder(borderRadius : BorderRadius.circular(30.0)),
    color:Colors.blue,
    return RaisedButton(
      child: Text("Sign In"), 
      onPressed: () {

      }
      );
  }

  Widget signupButtonFormField() {
      shape: RoundedRectangleBorder(borderRadius : BorderRadius.circular(30.0)),
    color:Colors.green,
    return RaisedButton(
      child: Text("Sign Up"), 
      onPressed: () {

      }
      );
  }

  Widget showAppName() {
    return Text(
      'ชื่อระบบ',
      style: TextStyle(
          // fontFamily: "Niramit",
          fontSize: 25.0,
          fontWeight: FontWeight.bold,
          color: Colors.black),
    );
  }

  Widget showLogo() {
    return Image.asset("images/logo.png");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      body: Container(
        color: Colors.blue,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [Colors.blue, Colors.white], begin: Alignment(-1, -1))),
        padding: EdgeInsets.only(top: 100.0),
        alignment: Alignment(0, -1),
        child: Column(
          children: <Widget>[
            Container(
              width: 200.0,
              height: 200.0,
              child: showLogo(),
            ),
            Container(
              margin: EdgeInsets.only(top: 15.0),
              child: showAppName(),
            ),
            Container(
              margin: EdgeInsets.only(left: 50.0, right: 50.0),
              child: emailTextFormField(),
            ),
            Container(
              margin: EdgeInsets.only(left: 50.0, right: 50.0),
              child: passwordTextFormField(),
            ),
            Container(
              margin: EdgeInsets.only(left: 50.0, right: 50.0, top: 10.0),
            
            Row(
              children: <Widget>[
                Expanded(
                  Container(
                  margin: EdgeInsets.only( right: 5.0),
                  child: signinButtonFormField(),
                  ),
                ),
                Expanded(
                  Container(
                  margin: EdgeInsets.only(left: 5.0),
                  child: signupButtonFormField(),
                  ),
                ),
              ],
            ),
            ),
          ],
        ),
      ),
    );
  }
}
