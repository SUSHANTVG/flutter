import 'package:flutter/material.dart';
import 'bottom_nav_item.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70.0,
      padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
      decoration: BoxDecoration(
        color: Colors.white,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          BottomNavItem(
            svgSource: 'assets/icons/calendar.svg',
            title: 'Today',
            onPress: () {},
          ),
          BottomNavItem(
            svgSource: 'assets/icons/gym.svg',
            title: 'All Exercises',
            onPress: () {},
            isSelected: true,
          ),
          BottomNavItem(
            svgSource: 'assets/icons/Settings.svg',
            title: 'Settings',
            onPress: () {},
          ),
        ],
      ),
    );
  }
}
