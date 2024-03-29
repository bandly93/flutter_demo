import 'package:flutter/material.dart';

class TextContainer extends StatelessWidget{
  final String text;
  final TextStyle textStyle;
  const TextContainer({Key key , this.text,this.textStyle}) : super(key:key);
  @override
  Widget build(BuildContext context){
    return Text(
      text,
      style : textStyle,
    );
  }
}