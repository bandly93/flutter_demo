import 'package:flutter/material.dart';
import 'package:flutter_app/common/round_image_widget.dart';
import 'package:flutter_app/image_asset.dart';

class FeelingWidget extends StatelessWidget{

  final friends = [
    {'imagePath': friend1,'name' : 'friend1'},
    {'imagePath': friend2,'name' : 'friend2'},
    {'imagePath': friend3,'name' : 'friend3'},
    {'imagePath': friend4,'name' : 'friend4'},
    {'imagePath': friend5,'name' : 'friend5'},
  ];

  Column buildFriends(){
    return Column(
      children: <Widget>[
        RoundImageWidget(imagePath: friend1),
        RoundImageWidget(imagePath: friend2),
        RoundImageWidget(imagePath: friend3),
        RoundImageWidget(imagePath: friend4),
        RoundImageWidget(imagePath: friend5),
      ],
    );
  }
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body : buildFriends(),
    );
  }
}