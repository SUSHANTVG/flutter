import 'package:flutter/material.dart';
import 'package:furniture_flutter/constants.dart';

import 'color_dot.dart';

class ListOfColors extends StatelessWidget {
  const ListOfColors({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: kDefaultPadding),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          ColorDot(
            fillColor: Color(0xFF80989A),
          ),
          ColorDot(
            isSelected: true,
            fillColor: kSecondaryColor,
          ),
          ColorDot(
            fillColor: kPrimaryColor,
          ),
        ],
      ),
    );
  }
}
