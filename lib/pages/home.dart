import 'package:flutter/material.dart';
import 'package:flutter_app/common/buttonContainer.dart';
import '../styles/textStyles.dart';
import 'package:flutter_app/common/gradientContainer.dart';
import 'package:flutter_app/pages/login.dart';
import 'package:flutter_app/common/textContainer.dart';
import 'package:flutter_app/styles/colors.dart';

class HomePage extends StatelessWidget{

  final colors = [color1,color2,color3];

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Container(
        decoration: gradient(colors,Alignment.topLeft,Alignment.bottomRight),
        padding: new EdgeInsets.fromLTRB(70, 0, 70, 0),
        child : Column(
          mainAxisAlignment : MainAxisAlignment.spaceAround,
          children: <Widget>[
            TextContainer(text : 'Bubble', textStyle :titleStyle),
            TextContainer(text : 'Want to demo the app?', textStyle : descriptionStyle),
            Column(
              children: <Widget>[
                ButtonContainer(text : "SIGN UP FREE", textStyle : signUpBtn, ),
                ButtonContainer(text : "CONTINUE WITH FACEBOOK", textStyle : fbBtn),
                ButtonContainer(text : "LOG IN", textStyle : logInBtn, route : loginPage),
              ],
            ),
          ],
        ),
      ),
    );
  }
}