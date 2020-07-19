import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  final Function onPress;
  final String title;
  final Color color, textColor;

  const RoundedButton({
    Key key,
    @required this.onPress,
    @required this.title,
    @required this.color,
    @required this.textColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      margin: EdgeInsets.symmetric(vertical: 10.0),
      width: size.width * 0.8,
      child: FlatButton(
        onPressed: onPress,
        padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 40.0),
        child: Text(
          '$title'.toUpperCase(),
          style: TextStyle(color: textColor),
        ),
        color: color,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(29.0),
        ),
      ),
    );
  }
}
