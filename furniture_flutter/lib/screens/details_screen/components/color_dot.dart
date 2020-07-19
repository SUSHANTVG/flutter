import 'package:flutter/material.dart';
import 'package:furniture_flutter/constants.dart';

class ColorDot extends StatelessWidget {
  final bool isSelected;
  final Color fillColor;

  const ColorDot({
    Key key,
    this.isSelected = false,
    this.fillColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: kDefaultPadding / 2.5),
      padding: EdgeInsets.all(3.0),
      height: 24.0,
      width: 24.0,
      decoration: BoxDecoration(
        border: Border.all(
          color: isSelected ? Color(0xFF707070) : Colors.transparent,
        ),
        shape: BoxShape.circle,
      ),
      child: Container(
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: fillColor,
        ),
      ),
    );
  }
}
