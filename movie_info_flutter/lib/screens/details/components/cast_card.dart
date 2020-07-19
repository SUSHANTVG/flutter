import 'package:flutter/material.dart';
import 'package:movie_info_flutter/constants.dart';

class CastCard extends StatelessWidget {
  final Map cast;

  const CastCard({
    Key key,
    this.cast,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: kDefaultPadding),
      width: 80.0,
      child: Column(
        children: <Widget>[
          CircleAvatar(
            radius: 35.0,
            backgroundImage: AssetImage(
              cast['image'],
            ),
          ),
          SizedBox(height: kDefaultPadding / 2),
          Text(
            cast['originalName'],
            style: Theme.of(context).textTheme.bodyText2,
            textAlign: TextAlign.center,
            maxLines: 2,
          ),
          SizedBox(height: kDefaultPadding / 4),
          Text(
            cast['movieName'],
            style: TextStyle(color: kTextLightColor),
            textAlign: TextAlign.center,
            maxLines: 1,
          ),
        ],
      ),
    );
  }
}
