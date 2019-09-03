import 'package:flutter/material.dart';
import 'package:flutter_app/common/gradientContainer.dart';
import 'package:flutter_app/common/navBar.dart';
import 'package:flutter_app/common/buttonContainer.dart';
import 'package:flutter_app/pages/profile.dart';
import 'package:flutter_app/styles/colors.dart';

Widget loginPage(){
  return Scaffold(
    body : Container(
      decoration : gradient([color1,color2,color3],Alignment.bottomRight,Alignment.topLeft),
      child : Column(
        children : <Widget>[
          NavBar(),
          Container(
            child : Column(
              children: <Widget>[
                Text("Login"),
                TextField(decoration: InputDecoration(labelText: 'Email'),),
                TextField(decoration: InputDecoration(labelText: 'Password'),),
                ButtonContainer(text : "Login", route : profile),
                ButtonContainer(text : "Forget Password?"),
              ],
            )
          )
        ]
      )
    )   
  );
}