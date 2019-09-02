import 'package:flutter/material.dart';
import 'package:flutter_app/common/button.dart';
import '../styles/buttonStyles.dart';
import 'package:flutter_app/common/gradientContainer.dart';
import 'package:flutter_app/pages/login.dart';

class HomePage extends StatelessWidget{

  final colors = [Colors.pink[300],Colors.cyan[300],Colors.cyanAccent];

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Container(
        decoration: gradient(colors,Alignment.topLeft,Alignment.bottomRight),
        padding: new EdgeInsets.fromLTRB(70, 0, 70, 0),
        child : Column(
          mainAxisAlignment : MainAxisAlignment.spaceAround,
          children: <Widget>[
            Text(
              'Bubble',
              style : TextStyle(
                color : Colors.white,
                fontSize : 60,
                fontStyle: FontStyle.italic,
              ),
            ),
            Text(
              'Want to demo the app?',
              textAlign: TextAlign.center,
              style : TextStyle (
                color : Colors.white,
                fontSize : 25,
                fontWeight: FontWeight.w600,
                ),
              ),
            Column(
              children: <Widget>[
                Button(text : "SIGN UP FREE",textStyle: signUpBtn, ),
                Button(text : "CONTINUE WITH FACEBOOK", textStyle : fbBtn),
                Button(text : "LOG IN", textStyle: logInBtn, route : LoginPage),
              ],
            ),
          ],
        ),
      ),
    );
  }
}