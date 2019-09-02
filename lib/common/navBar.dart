import 'package:flutter/material.dart';
import 'package:flutter_app/pages/home.dart';

class NavBar extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Row(
      children: <Widget>[
        InkWell(
          child : Icon(Icons.menu),
          onTap : () {
            Navigator.push(context,MaterialPageRoute(builder:(context) => HomePage()));
          }
        ),
      ],
    );
  }
}