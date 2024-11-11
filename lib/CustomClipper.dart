import 'package:flutter/widgets.dart';

class CustomerClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();

    double sideRadius = 30.0;
    double midPoint = size.height * (3 / 5);
    double cornerRadius = 20.0;
    double height = 130.0;
    double halfWidth = size.width / 2;

    // path.moveTo(0, cornerRadius);
    // path.lineTo(0, (midPoint - sideRadius));
    path.moveTo(0, size.height - height);
    path.lineTo(0, size.height);
    path.lineTo(size.width, size.height);
    path.lineTo(size.width, size.height - height);

    path.quadraticBezierTo((size.width), (size.height - height + sideRadius),
        (size.width - sideRadius), (size.height - height + sideRadius));

    path.lineTo(halfWidth + 2.5 * sideRadius, size.height - height + sideRadius);

    path.quadraticBezierTo(
        halfWidth + 2.2*sideRadius,
        (size.height - height + sideRadius),
        (halfWidth + 1.8*sideRadius),
        (size.height - height + 2 * sideRadius));

    path.quadraticBezierTo(
        halfWidth + 1.2*sideRadius,
        (size.height - height + 3 * sideRadius),
        (halfWidth ),
        (size.height - height + 3 * sideRadius));

    path.quadraticBezierTo(
        halfWidth - 1.2*sideRadius,
        (size.height - height + 3 * sideRadius),
        (halfWidth - 1.8*sideRadius),
        (size.height - height + 2 * sideRadius));

    path.quadraticBezierTo(
        halfWidth - 2.2*sideRadius,
        (size.height - height +sideRadius),
        (halfWidth - 2.5*sideRadius),
        (size.height - height +sideRadius));

    path.lineTo(sideRadius, size.height - height + sideRadius);

    path.quadraticBezierTo(
        (0), (size.height - height + sideRadius), (0), (size.height - height));

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
