import "package:flutter/material.dart";
import 'package:vector_math/vector_math_64.dart' as math;
import '../styles/colors.dart';
/*
  How to use RoundImageWidget.

  #1 Add line to page : import 'package:flutter_app/common/round_image_widget.dart';
  #2 Call Widget using : RounderImageWidth(imagePath, name);
*/

class RoundImageWidget extends StatelessWidget{
  final String imagePath;
  final imageSize = 80.0;
  final String name;

  const RoundImageWidget({
    Key key,
    @required this.imagePath,
    this.name,
  }) : super(key:key);

  @override
  Widget build(BuildContext context){
    return CustomPaint(
        painter : RoundedImageBorder(),
        child : Container(
          width : imageSize,
          height : imageSize,
          child :ClipOval(
            child : Image.asset(
              imagePath,
              fit :BoxFit.cover
            )
          )
        )
      );
  }
}

class RoundedImageBorder extends CustomPainter{
  @override
  void paint(Canvas canvas, Size size){
    Offset center = Offset(size.width/2 , size.height/2);

    Paint borderPaint = Paint()
      ..strokeCap = StrokeCap.butt
      ..style = PaintingStyle.stroke
      ..strokeWidth = 4.0;
    borderPaint.shader = appGradient.createShader(Rect.fromCircle(center : center, radius : size.width /2));
    canvas.drawArc(Rect.fromCircle(center:center,radius : size.width/2),math.radians(-90),math.radians(360),false,borderPaint);
  }
  
  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}