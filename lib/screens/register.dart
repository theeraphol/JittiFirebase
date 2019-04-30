import 'package:flutter/material.dart';

class Register extends StatefulWidget {
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  Widget passwordTextFormField() {
    return TextFormField(
      obscureText: true,
      decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15.0),
              borderSide: BorderSide(
                width: 1.0,
                color: Colors.grey,
              )),
          labelText: 'Password',
          hintText: 'Type your Password',
          icon: Icon(
            Icons.vpn_key,
            color: Colors.black,
          )),
    );
  }

  Widget emailTextFormField() {
    return TextFormField(
      decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15.0),
              borderSide: BorderSide(
                width: 1.0,
                color: Colors.grey,
              )),
          labelText: 'Email',
          hintText: 'Type your Email',
          icon: Icon(
            Icons.email,
            color: Colors.black,
          )),
    );
  }

  Widget nameTextFormField() {
    return TextFormField(
      decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15.0),
            borderSide: BorderSide(
              width: 1.0,
              color: Colors.grey,
            ),
          ),
          labelText: 'Name',
          hintText: 'Type Your Name',
          icon: Icon(
            Icons.face,
            color: Colors.black,
          )),
    );
  }

  Widget uploadButton() {
    return IconButton(
      icon: Icon(Icons.cloud_upload),
      tooltip: 'Upload to Firebase',
      onPressed: () {
        print("you click upload");
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text("Register"),
        actions: <Widget>[uploadButton()],
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: RadialGradient(
            colors: [
              Colors.white,
              Colors.white,
            ],
            radius: 1.5,
            center: Alignment(0, 0),
          ),
        ),
        padding: EdgeInsets.all(50.0),
        child: Column(
          children: <Widget>[
            Container(
              child: nameTextFormField(),
            ),
            Container(
              child: emailTextFormField(),
              padding: EdgeInsets.only(top: 20.0),
            ),
            Container(
              child: passwordTextFormField(),
              padding: EdgeInsets.only(top: 20.0),
            ),
          ],
        ),
      ),
    );
  }
}
