import 'package:flutter/material.dart';
import '../../../constants.dart';

class CategoryItem extends StatelessWidget {
  const CategoryItem({
    Key key,
    @required this.title,
    this.isActive = false,
    @required this.onPressed,
  }) : super(key: key);

  final String title;
  final bool isActive;
  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 15.0),
      child: GestureDetector(
        onTap: onPressed,
        child: Column(
          children: <Widget>[
            Text(
              title,
              style: isActive
                  ? TextStyle(
                      color: kTextColor,
                      fontWeight: FontWeight.bold,
                    )
                  : TextStyle(
                      fontSize: 12.0,
                    ),
            ),
            if (isActive)
              Container(
                margin: EdgeInsets.symmetric(vertical: 5.0),
                height: 3.0,
                width: 22.0,
                decoration: BoxDecoration(
                  color: kPrimaryColor,
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
