import 'package:animations/animations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:movie_info_flutter/constants.dart';
import 'package:movie_info_flutter/models/movie.dart';
import 'package:movie_info_flutter/screens/details/details_screen.dart';

class MovieCard extends StatelessWidget {
  final Movie movie;

  const MovieCard({
    Key key,
    this.movie,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: OpenContainer(
        closedElevation: 0.0,
        openElevation: 0.0,
        closedBuilder: (context, action) {
          return buildMovieCard(context);
        },
        openBuilder: (context, action) {
          return DetailsScreen(movie: movie);
        },
      ),
    );
  }

  Column buildMovieCard(BuildContext context) {
    return Column(
      children: <Widget>[
        Expanded(
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50.0),
              boxShadow: [kDefaultShadow],
              image: DecorationImage(
                image: AssetImage(movie.poster),
                fit: BoxFit.fill,
              ),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(vertical: kDefaultPadding / 2),
          child: Text(
            movie.title,
            style: Theme.of(context)
                .textTheme
                .headline5
                .copyWith(fontWeight: FontWeight.w600),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SvgPicture.asset('assets/icons/star_fill.svg'),
            SizedBox(width: kDefaultPadding / 2),
            Text(
              '${movie.rating}',
              style: Theme.of(context).textTheme.bodyText2,
            ),
          ],
        ),
      ],
    );
  }
}
