import 'package:flutter/material.dart';
import '../constants.dart';

class TwoSideRoundedButton extends StatelessWidget {
  final String text;
  final Function onPress;
  final double radius;

  const TwoSideRoundedButton({
    Key key,
    @required this.text,
    @required this.onPress,
    this.radius = 29.0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        decoration: BoxDecoration(
          color: kBlackColor,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(radius),
            bottomRight: Radius.circular(radius),
          ),
        ),
        alignment: Alignment.center,
        padding: EdgeInsets.symmetric(vertical: 10.0),
        child: Text(
          text,
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
