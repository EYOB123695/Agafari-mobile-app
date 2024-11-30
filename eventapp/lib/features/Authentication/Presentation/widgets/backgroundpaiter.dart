import 'package:eventapp/core/configs/theme/appcolors.dart';
import 'package:flutter/material.dart';

class BackgroundPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final Paint paint = Paint()
      ..color = Appcolors.Backgroundcolorone
      ..style = PaintingStyle.fill;

    Path path = Path();
    path.moveTo(0, 0);
    path.lineTo(size.width, size.height / 2);
    path.lineTo(size.width, 0);
    path.close();
    canvas.drawPath(path, paint);

    canvas.drawLine(Offset(0, 0), Offset(size.width, size.height / 2), paint);

    Path pathFour = Path();
    final Paint paintFour = Paint()
      ..color = Appcolors.Backgroundcolorfour
      ..style = PaintingStyle.fill;

    pathFour.moveTo(0, 0);
    pathFour.lineTo(size.width, size.height / 2);

    pathFour.lineTo(0, size.height / 2);

    pathFour.close();
    canvas.drawPath(pathFour, paintFour);

    final Paint paintSecond = Paint()
      ..color = Appcolors.Backgroundcolortwo
      ..style = PaintingStyle.fill;

    
    Path pathTwo = Path();

    pathTwo.moveTo(size.width, 0);
    pathTwo.lineTo(0, size.height / 2);

    pathTwo.lineTo(0, size.height - 30);
    pathTwo.lineTo(size.width, size.height / 2);

    pathTwo.close();
    canvas.drawPath(pathTwo, paintSecond);

    Path pathThree = Path();
    final Paint paintThree = Paint()
      ..color = Appcolors.Backgroundcolorthree
      ..style = PaintingStyle.fill;

    pathThree.moveTo(size.width, size.height / 2);
    pathThree.lineTo(0, size.height - 30);

    pathThree.lineTo(0, size.height);
    pathThree.lineTo(size.width, size.height);

    pathThree.close();
    canvas.drawPath(pathThree, paintThree);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
