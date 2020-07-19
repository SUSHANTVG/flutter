import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SearchBar extends StatelessWidget {
  final String svgSource;
  final String hintText;

  const SearchBar({
    Key key,
    @required this.svgSource,
    @required this.hintText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 40.0),
      padding: EdgeInsets.symmetric(vertical: 5.0, horizontal: 30.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(29.5),
      ),
      child: TextField(
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: '$hintText',
          icon: SvgPicture.asset('$svgSource'),
        ),
      ),
    );
  }
}
