import 'package:flutter/material.dart';
import '../constants.dart';

class BookRating extends StatelessWidget {
  final double ratings;
  const BookRating({Key key, @required this.ratings}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        vertical: 8.0,
        horizontal: 6.0,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16.0),
        boxShadow: [
          BoxShadow(
            offset: Offset(3, 7),
            blurRadius: 20.0,
            color: kShadowColor,
          ),
        ],
      ),
      child: Column(
        children: <Widget>[
          Icon(
            Icons.star,
            color: kIconColor,
            size: 15.0,
          ),
          SizedBox(height: 5.0),
          Text(
            '$ratings',
            style: TextStyle(
              fontSize: 12.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
