import 'package:flutter/material.dart';
import '../constants.dart';
import '../components/book_rating.dart';
import '../components/rounded_button.dart';

class BookInfo extends StatelessWidget {
  const BookInfo({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                'Crushing',
                style: Theme.of(context)
                    .textTheme
                    .headline4
                    .copyWith(fontWeight: FontWeight.bold),
              ),
              Text(
                '& Influence',
                style: Theme.of(context).textTheme.headline4,
              ),
              SizedBox(height: 5.0),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Expanded(
                    child: Column(
                      children: <Widget>[
                        Text(
                          'When the earth was flat and everyone wanted to win the game of the best and people...',
                          maxLines: 5,
                          style: TextStyle(
                            fontSize: 15.0,
                            color: kLightBlackColor,
                          ),
                        ),
                        SizedBox(height: 5.0),
                        RoundedButton(
                          text: 'Read',
                          onPress: () {},
                          verticalPadding: 10.0,
                        ),
                      ],
                    ),
                  ),
                  Column(
                    children: <Widget>[
                      IconButton(
                        icon: Icon(Icons.favorite_border),
                        onPressed: () {},
                      ),
                      BookRating(ratings: 4.9),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
        Image.asset(
          'assets/images/book-1.png',
          height: 200.0,
        ),
      ],
    );
  }
}
