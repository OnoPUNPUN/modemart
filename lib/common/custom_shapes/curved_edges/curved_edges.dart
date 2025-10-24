import 'package:flutter/material.dart';

class AppCustomCurvedEdges extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0, size.height);

    final firstCurv = Offset(0, size.height - 20);
    final lastCurv = Offset(30, size.height - 20);
    path.quadraticBezierTo(
      firstCurv.dx,
      firstCurv.dy,
      lastCurv.dx,
      lastCurv.dy,
    );

    final secondFirstCurv = Offset(0, size.height - 20);
    final secondLastCurv = Offset(size.width - 30, size.height - 20);
    path.quadraticBezierTo(
      secondFirstCurv.dx,
      secondFirstCurv.dy,
      secondLastCurv.dx,
      secondLastCurv.dy,
    );

    final thirdFirstCurv = Offset(size.width, size.height - 20);
    final thirdLastCurv = Offset(size.width, size.height);
    path.quadraticBezierTo(
      thirdFirstCurv.dx,
      thirdFirstCurv.dy,
      thirdLastCurv.dx,
      thirdLastCurv.dy,
    );

    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}
