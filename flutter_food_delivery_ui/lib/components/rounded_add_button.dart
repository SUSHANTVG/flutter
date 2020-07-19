import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';

class RoundedAddButton extends StatelessWidget {
  const RoundedAddButton({
    Key key,
    @required this.onPress,
    this.rightMargin = 20.0,
  }) : super(key: key);

  final Function onPress;
  final double rightMargin;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: rightMargin),
      height: 50.0,
      width: 50.0,
      decoration: BoxDecoration(
        color: Theme.of(context).primaryColor,
        shape: BoxShape.circle,
      ),
      child: IconButton(
        icon: Icon(
          Icons.add,
          color: Colors.white,
          size: 30.0,
        ),
        onPressed: onPress,
      ),
    );
  }
}
