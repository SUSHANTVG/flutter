import 'package:auth_flutter/components/text_field_container.dart';
import 'package:auth_flutter/constants.dart';
import 'package:flutter/material.dart';

class RoundedInputField extends StatelessWidget {
  final String hintText;
  final IconData icon;
  final ValueChanged<String> onChanged;

  const RoundedInputField({
    Key key,
    @required this.hintText,
    @required this.icon,
    @required this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: '$hintText',
          icon: Icon(
            icon,
            color: kPrimaryColor,
          ),
        ),
        onChanged: onChanged,
      ),
    );
  }
}
