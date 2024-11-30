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

    // Path to draw the area between the lines
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



// class Trianglebackground extends StatelessWidget {
//   final double width;
//   final double height;
//   final double top;
//   final double left;
//   final double angle;
//   const Trianglebackground({
//     Key? key,
//     required this.width,
//     required this.height,
//     required this.top,
//     required this.left,
//     required this.angle,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Positioned(
//       top: top,
//       left: left,
//       child: Container(
//         width: width,
//         height: height,
//         decoration: BoxDecoration(
//           color: Appcolors.Backgroundcolorone,
//           borderRadius: BorderRadius.only(
//             topLeft: Radius.circular(40),
//           ),
//         ),
//         child: Transform.rotate(
//           angle: angle * 3.14159 / 180,
//           child: ClipPath(
//             clipper: Triangleclipper(),
//             child: Container(
//               color: Appcolors.Backgroundcolorone, // Set the background color
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

// class Triangleclipper extends CustomClipper<Path> {
//   @override
//   Path getClip(Size size) {
//     Path path = Path();
//     path.lineTo(0, 0);
//     path.lineTo(size.width, 0);
//     path.lineTo(0, size.height);
//     path.close();
//     return path;
//   }

//   @override
//   bool shouldReclip(covariant CustomClipper<dynamic> oldClipper) {
//     return false;
//   }
// }
