import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';

class HeadlineText extends StatelessWidget {
  const HeadlineText({
    Key key,
    @required this.title,
    this.color = Colors.black,
  }) : super(key: key);

  final String title;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Text(
        title,
        style: TextStyle(
          fontSize: 24.0,
          color: color,
          fontWeight: FontWeight.w600,
          letterSpacing: 0.5,
        ),
      ),
    );
  }
}
