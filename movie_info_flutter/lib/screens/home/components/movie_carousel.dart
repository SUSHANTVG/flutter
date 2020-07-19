import 'package:flutter/material.dart';
import 'dart:math' as math;

import 'package:movie_info_flutter/constants.dart';
import 'package:movie_info_flutter/models/movie.dart';
import 'package:movie_info_flutter/screens/home/components/movie_card.dart';

class MovieCarousel extends StatefulWidget {
  @override
  _MovieCarouselState createState() => _MovieCarouselState();
}

class _MovieCarouselState extends State<MovieCarousel> {
  PageController _pageController;
  int initialPage = 0;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(
      initialPage: initialPage,
      viewportFraction: 0.8,
    );
  }

  @override
  void dispose() {
    super.dispose();
    _pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: kDefaultPadding),
      child: AspectRatio(
        aspectRatio: 0.80,
        child: PageView.builder(
          onPageChanged: (value) {
            setState(() {
              initialPage = value;
            });
          },
          physics: ClampingScrollPhysics(),
          controller: _pageController,
          itemCount: movies.length,
          itemBuilder: (context, index) {
            return buildMovieSlider(index);
          },
        ),
      ),
    );
  }

  Widget buildMovieSlider(int index) {
    return AnimatedBuilder(
      animation: _pageController,
      builder: (context, child) {
        double value = 0;
        if (_pageController.position.haveDimensions) {
          value = index - _pageController.page;
          value = (value * 0.038).clamp(-1, 1);
        }
        return AnimatedOpacity(
          duration: Duration(milliseconds: 350),
          opacity: initialPage == index ? 1 : 0.4,
          child: Transform.rotate(
            angle: math.pi * value,
            child: MovieCard(movie: movies[index]),
          ),
        );
      },
    );
  }
}
