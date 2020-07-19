import 'package:flutter/material.dart';
import 'package:movie_info_flutter/constants.dart';
import 'package:movie_info_flutter/screens/home/components/categories.dart';
import 'package:movie_info_flutter/screens/home/components/genres.dart';

import 'package:movie_info_flutter/screens/home/components/movie_carousel.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          CategoryList(),
          Genres(),
          SizedBox(height: kDefaultPadding),
          MovieCarousel(),
        ],
      ),
    );
  }
}
