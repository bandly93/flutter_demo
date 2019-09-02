import 'package:flutter/material.dart';
import 'package:flutter_app/common/navBar.dart';
import 'package:flutter_app/common/button.dart';

LoginPage(){
  return Scaffold(
    body : Column(
      children : <Widget>[
        NavBar(),
        Container(
          child : Column(
            children: <Widget>[
              Text("Login"),
              TextField(decoration: InputDecoration(labelText: 'Email'),),
              TextField(decoration: InputDecoration(labelText: 'Password'),),
              Button(text : "Login"),
              Text("Forget Password?")
            ],
          )
        )
      ]
    )  
  );
}