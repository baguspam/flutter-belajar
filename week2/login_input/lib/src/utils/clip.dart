import 'package:flutter/material.dart';

// On the Shape Appbar
class CustomShapeBorder extends ContinuousRectangleBorder {
  @override
  Path getOuterPath(Rect rect, {TextDirection textDirection}) {

    final double innerCircleRadius = 150.0;

    Path path = Path();
    path.lineTo(0, rect.height);
    path.quadraticBezierTo(rect.width / 2 - (innerCircleRadius / 2) - 30, rect.height + 15, rect.width / 2 - 75, rect.height + 50);
    path.cubicTo(
        rect.width / 2 - 40, rect.height + innerCircleRadius - 40,
        rect.width / 2 + 40, rect.height + innerCircleRadius - 40,
        rect.width / 2 + 75, rect.height + 50
    );
    path.quadraticBezierTo(rect.width / 2 + (innerCircleRadius / 2) + 30, rect.height + 15, rect.width, rect.height);
    path.lineTo(rect.width, 0.0);
    path.close();

    return path;
  }
}

class CustomShapeBorderAppBar extends ContinuousRectangleBorder {
  @override
  Path getOuterPath(Rect rect, {TextDirection textDirection}) {

    final double innerCircleRadius = 130.0;

    Path path = Path();
    path.lineTo(0, rect.height + innerCircleRadius/2);
    path.quadraticBezierTo(rect.width / 2, rect.height+ innerCircleRadius, rect.width, rect.height + innerCircleRadius/2);
    path.lineTo(rect.width, 0);
    path.close();
    return path;
  }
}

// On the Container
class WaveShape extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 100.0,
      child: CustomPaint(
        painter: _MyPainter1(),
      ),
    );
  }
}
class _MyPainter1 extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final double innerCircleRadius = 150.0;
    var paint = Paint();
    paint.color = Colors.blue;
    paint.style = PaintingStyle.fill; // Change this to fill

    var path = Path();

    path.moveTo(0, size.height * 0.25);
    path.quadraticBezierTo(
        size.width / 2, size.height / 2, size.width, size.height * 0.25);
    path.lineTo(size.width, 0);
    path.lineTo(0, 0);

    path.lineTo(0, size.height);
    path.quadraticBezierTo(size.width / 2 - (innerCircleRadius / 2) - 30, size.height + 15, size.width / 2 - 75, size.height + 50);
    path.cubicTo(
        size.width / 2 - 40, size.height + innerCircleRadius - 40,
        size.width / 2 + 40, size.height + innerCircleRadius - 40,
        size.width / 2 + 75, size.height + 50
    );
    path.quadraticBezierTo(size.width / 2 + (innerCircleRadius / 2) + 30, size.height + 15, size.width, size.height);
    path.lineTo(size.width, 0.0);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}

// Curved Shape Painter
class CurvedShape extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 500.0,
      child: CustomPaint(
        painter: _MyPainter2(),
      ),
    );
  }
}
class _MyPainter2 extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint();
    paint.color = Colors.blue;
    paint.style = PaintingStyle.fill; // Change this to fill

    var path = Path();

    path.moveTo(0, size.height * 0.25);
    path.quadraticBezierTo(
        size.width / 2, size.height / 2, size.width, size.height * 0.25);
    path.lineTo(size.width, 0);
    path.lineTo(0, 0);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}