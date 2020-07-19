import 'package:auth_flutter/components/text_field_container.dart';
import 'package:auth_flutter/constants.dart';
import 'package:flutter/material.dart';

class RoundedPasswordField extends StatelessWidget {
  final String hintText;
  final IconData icon, suffixIcon;
  final ValueChanged<String> onChanged;

  const RoundedPasswordField({
    Key key,
    @required this.hintText,
    @required this.icon,
    @required this.suffixIcon,
    @required this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        obscureText: true,
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: '$hintText',
          icon: Icon(
            icon,
            color: kPrimaryColor,
          ),
          suffixIcon: Icon(
            suffixIcon,
            color: kPrimaryColor,
          ),
        ),
      ),
    );
  }
}
