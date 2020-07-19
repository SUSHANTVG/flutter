import 'package:flutter/material.dart';

class BottomNavBarItem extends StatelessWidget {
  final IconData icon;
  final String title;
  final bool isSelected;

  const BottomNavBarItem({
    Key key,
    this.icon,
    this.title,
    this.isSelected = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          icon,
          color: isSelected ? Colors.black : Colors.black.withOpacity(0.4),
        ),
        Text(
          '$title',
          style: TextStyle(
            color: isSelected ? Colors.black : Colors.black.withOpacity(0.4),
          ),
        ),
      ],
    );
  }
}
