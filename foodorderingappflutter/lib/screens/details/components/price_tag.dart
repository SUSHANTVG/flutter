import 'package:flutter/material.dart';
import '../../../constants.dart';

ClipPath priceTag(BuildContext context, {@required int price}) {
  return ClipPath(
    clipper: PriceClipper(),
    child: Container(
      alignment: Alignment.center,
      height: 75.0,
      width: 65.0,
      decoration: BoxDecoration(color: kPrimaryColor),
      child: Text(
        '$price',
        style: Theme.of(context).textTheme.headline6.copyWith(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
      ),
    ),
  );
}

class PriceClipper extends CustomClipper<Path> {
  @override
  getClip(Size size) {
    Path path = Path();
    double ignoreHeight = 20.0;

    path.lineTo(0, size.height - ignoreHeight);
    path.lineTo(size.width / 2, size.height);
    path.lineTo(size.width, size.height - ignoreHeight);
    path.lineTo(size.width, 0);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper oldClipper) {
    return false;
  }
}
