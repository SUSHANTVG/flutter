import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';

class RatingStars extends StatelessWidget {
  final int ratings;

  const RatingStars({
    Key key,
    @required this.ratings,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String stars = '';

    for (var i = 0; i < ratings; i++) {
      stars += '⭐ ';
    }
    stars.trim();

    return Text(
      stars,
      style: TextStyle(fontSize: 18.0),
    );
  }
}
