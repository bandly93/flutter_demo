import 'package:flutter/material.dart';

class NavBar extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Padding(
      padding : const EdgeInsets.all(32.0),
      child : Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          IconButton (
            icon : Icon(Icons.arrow_left),
            onPressed : (){Navigator.pop(context);},
          ),
          IconButton(
            icon : Icon(Icons.menu),
            onPressed : (){}
          )
        ],
      )
    );
  }
}