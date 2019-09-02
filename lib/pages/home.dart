import 'package:flutter/material.dart';
import 'package:flutter_app/common/button.dart';

class HomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            stops: [0.1,0.7,1],
            colors: [
              Colors.pink[300],
              Colors.cyan[300],
              Colors.cyanAccent,
            ],
          ),
        ),
        padding: new EdgeInsets.fromLTRB(70, 0, 70, 0),
        child : Column(
          mainAxisAlignment : MainAxisAlignment.spaceAround,
          children: <Widget>[
            Text(
              'Squish',
              style : TextStyle(
                color : Colors.white,
                fontSize : 60,
                fontStyle: FontStyle.italic,
              ),
            ),
            Text(
              'Your Mobile Abstract Diary',
              textAlign: TextAlign.center,
              style : TextStyle (
                color : Colors.white,
                fontSize : 25,
                fontWeight: FontWeight.w600,
                ),
              ),
            Column(
              children: <Widget>[
                Button(text : "SIGN UP FREE"),
                Button(text : "CONTINUE WITH FACEBOOK"),
                Button(text : "LOG IN"),
              ],
            ),
          ],
        ),
      ),
    );
  }
}