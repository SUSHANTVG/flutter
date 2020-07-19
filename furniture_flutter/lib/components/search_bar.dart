import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:furniture_flutter/constants.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({
    Key key,
    this.onChanged,
  }) : super(key: key);

  final ValueChanged onChanged;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(kDefaultPadding),
      padding: EdgeInsets.symmetric(
        horizontal: kDefaultPadding,
        vertical: kDefaultPadding / 4,
      ),
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.4),
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: TextField(
        onChanged: onChanged,
        style: TextStyle(color: Colors.white),
        decoration: InputDecoration(
          icon: SvgPicture.asset('assets/icons/search.svg'),
          border: InputBorder.none,
          hintText: 'Search',
          hintStyle: TextStyle(color: Colors.white.withOpacity(0.6)),
        ),
      ),
    );
  }
}
