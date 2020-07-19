import 'package:flutter/material.dart';
import 'package:movie_info_flutter/constants.dart';
import 'package:movie_info_flutter/models/movie.dart';

class TitleDurationAndFABBtn extends StatelessWidget {
  const TitleDurationAndFABBtn({
    Key key,
    @required this.movie,
  }) : super(key: key);

  final Movie movie;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(kDefaultPadding),
      child: Row(
        children: <Widget>[
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  movie.title,
                  style: Theme.of(context).textTheme.headline5,
                ),
                SizedBox(height: kDefaultPadding / 2),
                Row(
                  children: <Widget>[
                    Text(
                      '${movie.year}',
                      style: TextStyle(color: kTextLightColor),
                    ),
                    SizedBox(width: kDefaultPadding),
                    Text(
                      'PG-13',
                      style: TextStyle(color: kTextLightColor),
                    ),
                    SizedBox(width: kDefaultPadding),
                    Text(
                      movie.time,
                      style: TextStyle(color: kTextLightColor),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            height: 64.0,
            width: 64.0,
            child: FlatButton(
              onPressed: () {},
              child: Icon(
                Icons.add,
                color: Colors.white,
                size: 28,
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0),
              ),
              color: kSecondaryColor,
            ),
          ),
        ],
      ),
    );
  }
}
