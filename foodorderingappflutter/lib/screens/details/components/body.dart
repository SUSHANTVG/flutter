import 'package:flutter/material.dart';
import './item_info.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Column(
      children: <Widget>[
        Image.asset(
          'assets/images/burger.png',
          height: size.height * 0.30,
          width: double.infinity,
          fit: BoxFit.fill,
        ),
        Expanded(
          child: ItemInfo(),
        ),
      ],
    );
  }
}
