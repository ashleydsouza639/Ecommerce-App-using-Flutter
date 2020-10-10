// main.dart

import 'dart:ui';

import 'package:flutter/material.dart';

class BasicShape extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Custom Painter',
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
      home: MyPainter(),
    );
  }
}

class MyPainter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lines'),
      ),
      body: CustomPaint(
        painter: ShapePainter(),
        child: Container(),
      ),
    );
  }
}

class ShapePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint()
      ..color = Colors.teal
      ..strokeWidth = 5
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round;

    //line
    Offset startingPoint = Offset(0, 50);
    Offset endingPoint = Offset(size.width, 50);

    canvas.drawLine(startingPoint, endingPoint, paint);

    //circcle
    Offset center = Offset(size.width / 2, size.height / 2);

    canvas.drawCircle(center, 60, paint);

    //rectangler
    canvas.drawRect(Rect.fromLTWH(20, 70, 100, 100), paint);

    canvas.drawRect(Rect.fromLTWH(100, 350, 200, 100), paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    return false;
  }
}
