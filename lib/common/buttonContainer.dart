import 'package:flutter/material.dart';

/*
  How to use Button Widget

  #1 import into page : import 'package:flutter_app/common/button.dart';
  #2 call widget using : Button(@required text, onPressed, textStyle);

*/

class ButtonContainer extends StatelessWidget{
  final String text;
  final Function route;
  final TextStyle textStyle;
  final double width;
  const ButtonContainer({Key key, @required this.text , this.route, this.textStyle, this.width}) : super(key:key);

  void _navigate(context,page){
    Navigator.push(context, MaterialPageRoute(builder : (context)=> page()));
  }

  @override
  Widget build(BuildContext context){
    return SizedBox(
      width : this.width !=null ? this.width : 300,
      child : RaisedButton(
        shape : RoundedRectangleBorder(borderRadius : new BorderRadius.circular(30.0)),
        onPressed : (){_navigate(context,this.route);},
        child : Text(this.text , style : this.textStyle),
      ),
    );
  }
}
