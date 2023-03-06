import 'dart:js';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login Screen")
      ),
      body: Container(
        padding: EdgeInsets.all(20.0),
        child: ListView(
          children: <Widget>[
            Center(
              child: Column(
                children: <Widget>[
                  _logo(),
                  _textForm(),
                  _buttom(),
                ],
              ),
            ),
          ],
        ),
      )
    );
  }
  Widget _textForm(){
      return Column(
        children: [
          Padding(
            padding: EdgeInsets.only(top: 40.0),
            child: TextFormField(
                decoration: InputDecoration(
                  labelText: 'Email',
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(30), borderSide: BorderSide(width: 1.5),),
                )
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 12.0),
            child: TextFormField(
                decoration: InputDecoration(
                  labelText: 'Password',
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(30), borderSide: BorderSide(width: 1.5),),
                )
            ),
          ),
        ],
      );
  }
  Widget _buttom (){
    return Column(
      children: <Widget>[
        Padding(padding: EdgeInsets.only(top: 16.0)),
        InkWell(
          child: Container(
            padding: EdgeInsets.symmetric(vertical: 8.0),
            width: double.infinity,
            child: Text(
              'Log In',
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.white),
            ),
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        ),
        Padding(padding: EdgeInsets.only(top: 16.0)),
        InkWell(
          child: Text(
          'Forgot password?',
          style: TextStyle (color: Colors.blue),
          ),
        ),
      ],
    );
  }
  Widget _logo(){
    return Column(
      children : <Widget> [
        Padding(padding: EdgeInsets.only(top: 80.0)),
        FlutterLogo()
      ],
    );
  }
}
