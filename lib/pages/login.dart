import 'package:flutter/material.dart';
import 'package:flutter_app/common/gradientContainer.dart';
import 'package:flutter_app/common/navBar.dart';
import 'package:flutter_app/common/button.dart';

LoginPage(){
  return Scaffold(
    body : Container(
      decoration : gradient([Colors.pink[300],Colors.cyan[300],Colors.cyanAccent,],Alignment.bottomRight,Alignment.topLeft),
      child : Column(
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
    )   
  );
}