import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:furniture_flutter/constants.dart';

AppBar buildAppBar(BuildContext context) {
  return AppBar(
    elevation: 0.0,
    backgroundColor: kBackgroundColor,
    leading: IconButton(
      icon: SvgPicture.asset('assets/icons/back.svg'),
      onPressed: () {
        Navigator.pop(context);
      },
    ),
    title: Text(
      'back'.toUpperCase(),
      style: Theme.of(context).textTheme.bodyText1,
    ),
    actions: <Widget>[
      IconButton(
        icon: SvgPicture.asset('assets/icons/cart_with_item.svg'),
        onPressed: () {},
      ),
    ],
  );
}
