import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  final String text;
  final Function onPress;
  final double verticalPadding;
  final double fontSize;

  const RoundedButton({
    Key key,
    @required this.text,
    @required this.onPress,
    this.verticalPadding = 16.0,
    this.fontSize = 16.0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        alignment: Alignment.center,
        margin: EdgeInsets.symmetric(vertical: 16.0),
        padding: EdgeInsets.symmetric(
          vertical: verticalPadding,
          horizontal: 30.0,
        ),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(30.0),
          boxShadow: [
            BoxShadow(
              offset: Offset(0, 15),
              blurRadius: 30.0,
              color: Color(0xFF666666).withOpacity(0.11),
            ),
          ],
        ),
        child: Text(
          text,
          style: TextStyle(
            fontSize: fontSize,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
