import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class Register extends StatefulWidget {
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
// Explicit
  final formKey = GlobalKey<FormState>();
  String nameString, emailString, passwordString;

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
      validator: (String value) {
        if (value.length == 0) {
          return 'กรอก รหัสผ่าน ด้วยสิฟะ';
        } else if (value.length <= 5) {
          return 'กรอก รหัสผ่าน ไม่พอเว้ยเฮ้ย';
        }
      },
      onSaved: (String value) {
        passwordString = value;
      },
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
        ),
      ),
      validator: (String value) {
        if (value.length == 0) {
          return 'กรอก อีเมล์ ด้วยสิฟะ';
        } else if (!((value.contains('@')) && (value.contains('.')))) {
          return 'กรอก อีเมล์ ผิดรูปแบบเว้ยเฮ้ย';
        }
      },
      onSaved: (String value) {
        emailString = value;
      },
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
      validator: (String value) {
        if (value.length == 0) {
          return 'กรอก ชื่อ ด้วยสิฟะ';
        }
      },
      onSaved: (String value) {
        nameString = value;
      },
    );
  }

  Widget uploadButton() {
    return IconButton(
      icon: Icon(Icons.cloud_upload),
      tooltip: 'Upload to Firebase',
      onPressed: () {
        print("you click upload");
        if (formKey.currentState.validate()) {
          formKey.currentState.save();
          print(
              'name = $nameString , email = $emailString , password= $passwordString');
        }
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
      body: Form(
        key: formKey,
        child: Container(
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
      ),
    );
  }
}
