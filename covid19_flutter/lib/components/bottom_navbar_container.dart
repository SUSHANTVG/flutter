import 'package:flutter/material.dart';
import './bottom_navbar_item.dart';

class BottomNavBarContainer extends StatelessWidget {
  const BottomNavBarContainer({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80.0,
      decoration: BoxDecoration(
        color: Color(0xFFFFF9EF),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(36.5),
          topRight: Radius.circular(36.5),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          BottomNavBarItem(
            icon: Icons.home,
            title: 'Home',
            isSelected: true,
          ),
          BottomNavBarItem(
            icon: Icons.equalizer,
            title: 'Reports',
          ),
          BottomNavBarItem(
            icon: Icons.favorite,
            title: 'Health',
          ),
          BottomNavBarItem(
            icon: Icons.phone_in_talk,
            title: 'Emergency',
          ),
        ],
      ),
    );
  }
}
