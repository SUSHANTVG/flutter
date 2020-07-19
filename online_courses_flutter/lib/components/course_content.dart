import 'package:flutter/material.dart';
import '../constants.dart';

class CourseContent extends StatelessWidget {
  final String title;
  final String duration;
  final String number;
  final bool isDone;

  const CourseContent({
    Key key,
    @required this.title,
    @required this.duration,
    @required this.number,
    this.isDone = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 30.0),
      child: Row(
        children: <Widget>[
          Text(
            '$number',
            style: kHeadingTextStyle.copyWith(
              color: kTextColor.withOpacity(0.15),
              fontSize: 32.0,
            ),
          ),
          SizedBox(width: 20.0),
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: '$duration mins\n',
                  style: kSubtitleTextStyle.copyWith(
                    color: kTextColor.withOpacity(0.5),
                    fontSize: 18.0,
                  ),
                ),
                TextSpan(
                  text: '$title',
                  style: kSubtitleTextStyle.copyWith(
                    fontWeight: FontWeight.w600,
                    height: 1.5,
                  ),
                ),
              ],
            ),
          ),
          Spacer(),
          Container(
            height: 40.0,
            width: 40.0,
            decoration: BoxDecoration(
              color: kGreenColor.withOpacity(isDone ? 1 : 0.4),
              shape: BoxShape.circle,
            ),
            child: Icon(
              Icons.play_arrow,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
