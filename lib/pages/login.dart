import 'package:flutter/material.dart';
import 'package:flutter_app/common/navBar.dart';

LoginPage(){
  return Scaffold(
    body : Row(
      children : <Widget>[
        NavBar(),
      ]
    )  
  );
}