import 'package:flutter/material.dart';


class BottomCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Path path_0 = Path();
    path_0.moveTo(size.width, size.height * 0.7402597);
    path_0.lineTo(size.width, size.height * 0.3896104);
    path_0.cubicTo(size.width, size.height * 0.1744351, size.width * 0.9641840,
        0, size.width * 0.9200000, 0);
    path_0.lineTo(size.width * 0.6682613, 0);
    path_0.cubicTo(
        size.width * 0.6524427,
        0,
        size.width * 0.6369787,
        size.height * 0.02283896,
        size.width * 0.6238267,
        size.height * 0.06563000);
    path_0.lineTo(size.width * 0.6055067, size.height * 0.1252186);
    path_0.cubicTo(
        size.width * 0.5923547,
        size.height * 0.1680091,
        size.width * 0.5768907,
        size.height * 0.1908494,
        size.width * 0.5610720,
        size.height * 0.1908494);
    path_0.lineTo(size.width * 0.4438773, size.height * 0.1908494);
    path_0.cubicTo(
        size.width * 0.4274693,
        size.height * 0.1908494,
        size.width * 0.4114560,
        size.height * 0.1662727,
        size.width * 0.3980107,
        size.height * 0.1204529);
    path_0.lineTo(size.width * 0.3833227, size.height * 0.07039597);
    path_0.cubicTo(size.width * 0.3698773, size.height * 0.02457597,
        size.width * 0.3538640, 0, size.width * 0.3374560, 0);
    path_0.lineTo(size.width * 0.08000000, 0);
    path_0.cubicTo(size.width * 0.03581733, 0, 0, size.height * 0.1744351, 0,
        size.height * 0.3896104);
    path_0.lineTo(0, size.height * 0.7402597);
    path_0.cubicTo(0, size.height * 0.8837104, size.width * 0.02387816,
        size.height, size.width * 0.05333333, size.height);
    path_0.lineTo(size.width * 0.9466667, size.height);
    path_0.cubicTo(size.width * 0.9761227, size.height, size.width,
        size.height * 0.8837104, size.width, size.height * 0.7402597);
    path_0.close();

    Paint paint_0_fill = Paint()..style = PaintingStyle.fill;
    paint_0_fill.color = Color(0xff0E0D14).withOpacity(1.0);
    canvas.drawPath(path_0, paint_0_fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
