import 'package:flutter/material.dart';

gradient(colors,Alignment start,Alignment end){
  return BoxDecoration(
    gradient: LinearGradient(
      begin: start,
      end: end,
      stops: [0.1,0.3,1],
      colors: colors,
    ),
  );
}