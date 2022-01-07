import 'package:flutter/material.dart';

class LoginPagePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint()..color = Colors.teal.shade300;

    Path path = Path();
    // Paint paint = Paint();

    path.lineTo(0, size.height * 0.74);
    path.quadraticBezierTo(size.width * 0.2, size.height * 0.68, size.width * 0.45, size.height * 0.75);
    path.quadraticBezierTo(size.width * 0.75, size.height * 0.82, size.width, size.height * 0.75);
    path.quadraticBezierTo(size.width, size.height * 0, size.width, 0);
    path.close();

    paint.color = Colors.cyan.shade100;
    canvas.drawPath(path, paint);
    Path path1 = Path();
    path1.lineTo(0, size.height * 0.74);
    path1.quadraticBezierTo(size.width * 0.2, size.height * 0.7, size.width * 0.45, size.height * 0.75);
    path1.quadraticBezierTo(size.width * 0.75, size.height * 0.68, size.width, size.height * 0.75);
    path1.quadraticBezierTo(size.width, size.height * 0, size.width, 0);
    path1.close();

    paint.color = Colors.white;
    canvas.drawPath(path1, paint);

    Path path2 = Path();
    path2.lineTo(0, size.width * 0.28);
    path2.quadraticBezierTo(size.width * 0.3, size.width * 0.3, size.width * 0.3, size.width * 0.1);
    path2.quadraticBezierTo(size.width * 0.3, size.width * 0, size.width * 0.28, 0);
    path2.close();
    paint.color = Colors.cyan.shade100;
    canvas.drawPath(path2, paint);

    canvas.drawCircle(Offset(size.width * 0.95, size.height * 0.3), 80, paint);
  }

  @override
  bool shouldRepaint(LoginPagePainter oldDelegate) => true;

  @override
  bool shouldRebuildSemantics(LoginPagePainter oldDelegate) => false;
}
