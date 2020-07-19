import 'package:auth_flutter/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SocialIcon extends StatelessWidget {
  final String iconSource;
  final Function onPress;

  const SocialIcon({
    Key key,
    @required this.iconSource,
    @required this.onPress,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        padding: EdgeInsets.all(20.0),
        margin: EdgeInsets.symmetric(horizontal: 10.0),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(
            color: kPrimaryLightColor,
            width: 2.0,
          ),
        ),
        child: SvgPicture.asset(
          '$iconSource',
          height: 20.0,
          width: 20.0,
          color: kPrimaryColor,
        ),
      ),
    );
  }
}
