import 'package:flutter/material.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';
import '../../../constants.dart';
import './price_tag.dart';

class TitlePriceRating extends StatelessWidget {
  const TitlePriceRating({
    Key key,
    @required this.title,
    @required this.noOfRatings,
    @required this.price,
    @required this.rating,
    @required this.onRatingChanged,
  }) : super(key: key);

  final String title;
  final int price, noOfRatings;
  final double rating;
  final RatingChangeCallback onRatingChanged;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 20.0),
      child: Row(
        children: <Widget>[
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  title,
                  style: Theme.of(context).textTheme.headline5,
                ),
                SizedBox(height: 10.0),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    SmoothStarRating(
                      rating: rating,
                      borderColor: kPrimaryColor,
                      onRated: onRatingChanged,
                    ),
                    SizedBox(width: 10.0),
                    Text('$noOfRatings reviews')
                  ],
                ),
              ],
            ),
          ),
          priceTag(context, price: price),
        ],
      ),
    );
  }
}
