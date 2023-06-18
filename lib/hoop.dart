import 'dart:math';

import 'package:flutter/material.dart';
import 'package:kobe_tab_bar/main.dart';

class HoopPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint()
      ..color = Colors.white
      ..strokeJoin = StrokeJoin.round
      ..strokeCap = StrokeCap.round
      ..style = PaintingStyle.fill
      ..strokeWidth = 12;

    var path = Path();

    path.moveTo(0, size.height * 0.8);
    path.lineTo(size.width * 0.005, size.height * 0.4);
    path.quadraticBezierTo(size.width * 0.5, size.height * 0.1,
        size.width * 0.995, size.height * 0.4);

    path.lineTo(size.width, size.height * 0.79);

    path.arcTo(
        Rect.fromLTWH(size.width * 0.85, size.height * 0.73, size.width * 0.15,
            size.height * 0.12),
        degToRad(0),
        degToRad(70),
        false);

    path.lineTo(size.width * 0.70, size.height * 0.9);
    path.lineTo(size.width * 0.5, size.height * 0.75);
    path.lineTo(size.width * 0.3, size.height * 0.9);
    path.lineTo(size.width * 0.065, size.height * 0.85);
    path.arcTo(
        Rect.fromLTWH(
            0, size.height * 0.73, size.width * 0.15, size.height * 0.12),
        degToRad(100),
        degToRad(80),
        false);

    path.lineTo(0, size.height * 0.2);

    var paint2 = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = 10
      ..color = Colors.orange;

    var path2 = Path();
    path2.moveTo(size.width * 0.3, size.height * 0.9);
    path2.lineTo(size.width * 0.3, size.height * 0.5);
    path2.lineTo(size.width * 0.7, size.height * 0.5);
    path2.lineTo(size.width * 0.7, size.height * 0.9);

    var paint3 = Paint()
      ..color = Colors.black
      ..style = PaintingStyle.stroke
      ..strokeWidth = 13;

    var path3 = Path();

    path3.addOval(
      Rect.fromPoints(
        Offset(
          size.width * 0.35,
          size.height * 0.75,
        ),
        Offset(
          size.width * 0.65,
          size.height * 0.85,
        ),
      ),
    );

    canvas.drawPath(path, paint);
    canvas.drawPath(path2, paint2);
    canvas.drawPath(path3, paint3);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;

  double degToRad(double deg) => deg * (pi / 180.0);
}
