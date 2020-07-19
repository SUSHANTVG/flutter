import 'package:flutter/material.dart';
import 'package:movie_info_flutter/components/genre_card.dart';
import 'package:movie_info_flutter/constants.dart';
import 'package:movie_info_flutter/models/movie.dart';

class Genres extends StatelessWidget {
  const Genres({
    Key key,
    @required this.movie,
  }) : super(key: key);

  final Movie movie;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: kDefaultPadding / 2),
      child: SizedBox(
        height: 36.0,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: movie.genre.length,
          itemBuilder: (BuildContext context, int index) {
            return GenreCard(genre: movie.genre[index]);
          },
        ),
      ),
    );
  }
}
