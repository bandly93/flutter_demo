import 'package:flutter/material.dart';

navigate(context,page){
  Navigator.push(context, MaterialPageRoute(builder : (context)=> page()));
}