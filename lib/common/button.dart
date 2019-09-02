import 'package:flutter/material.dart';

/*
  How to use Button Widget

  #1 import into page : import 'package:flutter_app/common/button.dart';
  #2 call using : Button(@required text, onPressed);

*/

class Button extends StatelessWidget{
  final String text;
  final Function onPressed;
  const Button({Key key, this.text , this.onPressed}) : super(key:key);

  @override
  Widget build(BuildContext context){
    return RaisedButton(
      onPressed : this.onPressed != null ? this.onPressed : null,
      child : Text(this.text),
    );
  }
}