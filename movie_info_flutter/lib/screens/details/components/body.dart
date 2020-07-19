import 'package:flutter/material.dart';
import 'package:movie_info_flutter/constants.dart';
import 'package:movie_info_flutter/models/movie.dart';
import 'package:movie_info_flutter/screens/details/components/backdrop_and_ratings.dart';
import 'package:movie_info_flutter/screens/details/components/cast_and_crew.dart';
import 'package:movie_info_flutter/screens/details/components/genres.dart';
import 'package:movie_info_flutter/screens/details/components/title_duration_and_fab.dart';

class Body extends StatelessWidget {
  final Movie movie;

  const Body({
    Key key,
    this.movie,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          BackdropAndRatings(size: size, movie: movie),
          SizedBox(height: kDefaultPadding / 2),
          TitleDurationAndFABBtn(movie: movie),
          Genres(movie: movie),
          Padding(
            padding: EdgeInsets.symmetric(
              vertical: kDefaultPadding / 2,
              horizontal: kDefaultPadding,
            ),
            child: Text(
              'Plot Summary',
              style: Theme.of(context).textTheme.headline5,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
            child: Text(
              movie.plot,
              style: TextStyle(
                color: Color(0xFF737599),
              ),
            ),
          ),
          CastAndCrew(cast: movie.cast),
        ],
      ),
    );
  }
}
