import 'package:flutter/material.dart';
import '../styles/buttonStyles.dart';

/*
  How to use Button Widget

  #1 import into page : import 'package:flutter_app/common/button.dart';
  #2 call widget using : Button(@required text, onPressed, textStyle);

*/

class Button extends StatelessWidget{
  final String text;
  final Function onPressed;
  final TextStyle textStyle;
  final double width;
  const Button({Key key, @required this.text , this.onPressed, this.textStyle, this.width}) : super(key:key);

  @override
  Widget build(BuildContext context){
    return SizedBox(
      width : this.width !=null ? this.width : 300,
      child : RaisedButton(
        shape : RoundedRectangleBorder(borderRadius : new BorderRadius.circular(30.0)),
        onPressed : this.onPressed != null ? this.onPressed : (){},
        child : Text(this.text , style : this.textStyle),
      ),
    );
  }
}