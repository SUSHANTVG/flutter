import 'package:flutter/material.dart';
import 'package:movie_info_flutter/constants.dart';
import 'package:movie_info_flutter/screens/details/components/cast_card.dart';

class CastAndCrew extends StatelessWidget {
  final List cast;

  const CastAndCrew({
    Key key,
    this.cast,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(kDefaultPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            'Cast & Crew',
            style: Theme.of(context).textTheme.headline5,
          ),
          SizedBox(height: kDefaultPadding),
          SizedBox(
            height: 160.0,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: cast.length,
              itemBuilder: (context, index) {
                return CastCard(cast: cast[index]);
              },
            ),
          ),
        ],
      ),
    );
  }
}
