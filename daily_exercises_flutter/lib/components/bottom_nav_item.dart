import '../constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BottomNavItem extends StatelessWidget {
  final String svgSource;
  final String title;
  final Function onPress;
  final bool isSelected;

  const BottomNavItem({
    Key key,
    @required this.svgSource,
    @required this.title,
    @required this.onPress,
    this.isSelected = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          SvgPicture.asset(
            '$svgSource',
            color: isSelected ? kActiveIconColor : kTextColor,
          ),
          Text(
            '$title',
            style: TextStyle(
              color: isSelected ? kActiveIconColor : kTextColor,
            ),
          ),
        ],
      ),
    );
  }
}
