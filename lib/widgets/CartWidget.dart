


import 'package:flutter/material.dart';

class CartWidget extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {

    Path path_0 = Path();
    path_0.moveTo(size.width,size.height*0.9743918);
    path_0.lineTo(size.width,size.height*0.03841229);
    path_0.cubicTo(size.width,size.height*0.01719782,size.width*0.9641840,0,size.width*0.9200000,0);
    path_0.lineTo(size.width*0.6682347,0);
    path_0.cubicTo(size.width*0.6524320,0,size.width*0.6369840,size.height*0.002247145,size.width*0.6238400,size.height*0.006457964);
    path_0.lineTo(size.width*0.6054933,size.height*0.01233403);
    path_0.cubicTo(size.width*0.5923493,size.height*0.01654481,size.width*0.5769013,size.height*0.01879206,size.width*0.5610987,size.height*0.01879206);
    path_0.lineTo(size.width*0.4438507,size.height*0.01879206);
    path_0.cubicTo(size.width*0.4274587,size.height*0.01879206,size.width*0.4114613,size.height*0.01637388,size.width*0.3980240,size.height*0.01186479);
    path_0.lineTo(size.width*0.3833093,size.height*0.006927222);
    path_0.cubicTo(size.width*0.3698720,size.height*0.002418156,size.width*0.3538747,0,size.width*0.3374827,0);
    path_0.lineTo(size.width*0.08000000,0);
    path_0.cubicTo(size.width*0.03581733,0,0,size.height*0.01719770,0,size.height*0.03841229);
    path_0.lineTo(0,size.height);
    path_0.cubicTo(0,size.height,size.width*0.02387816,size.height,size.width*0.05333333,size.height);
    path_0.lineTo(size.width*0.9466667,size.height);
    path_0.cubicTo(size.width,size.height,size.width,size.height,size.width,size.height);
    path_0.close();

    Paint paint_0_fill = Paint()..style=PaintingStyle.fill;
    paint_0_fill.color = Colors.black.withOpacity(1.0);
    canvas.drawPath(path_0,paint_0_fill);

  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}