import 'package:flutter/material.dart';

_navigate(context,page){
  Navigator.push(context, MaterialPageRoute(builder : (context)=> page()));
}