import 'package:flutter/material.dart';
import 'package:movie_info_flutter/components/genre_card.dart';
import 'package:movie_info_flutter/constants.dart';

class Genres extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<String> genres = [
      'Action',
      'Drama',
      'Sci-Fi',
      'Biography',
      'Animation',
      'Adventure',
      'Comedy',
    ];

    return Container(
      margin: EdgeInsets.symmetric(vertical: kDefaultPadding / 2),
      height: 36.0,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: genres.length,
        itemBuilder: (BuildContext context, int index) {
          return GenreCard(genre: genres[index]);
        },
      ),
    );
  }
}
