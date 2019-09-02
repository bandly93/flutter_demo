import 'package:flutter/material.dart';
import 'package:flutter_app/pages/home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title : 'Squish 2.0',
      debugShowCheckedModeBanner : false,
      theme : ThemeData(),
      home : HomePage(),
    );
  }
}