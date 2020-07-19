import 'package:flutter/material.dart';
import '../constants.dart';
import './two_side_rounded_button.dart';
import './book_rating.dart';

class ReadingListCard extends StatelessWidget {
  final String image;
  final String title;
  final String author;
  final double bookRating;
  final Function pressDetails;
  final Function pressRead;

  const ReadingListCard({
    Key key,
    @required this.image,
    @required this.title,
    @required this.author,
    @required this.bookRating,
    @required this.pressDetails,
    @required this.pressRead,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        left: 24.0,
        bottom: 40.0,
      ),
      height: 245.0,
      width: 202.0,
      child: Stack(
        children: <Widget>[
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              height: 221.0,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(29.0),
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0, 10),
                    blurRadius: 33.0,
                    color: kShadowColor,
                  ),
                ],
              ),
            ),
          ),
          Image.asset(
            image,
            width: 150.0,
          ),
          Positioned(
            top: 35.0,
            right: 10.0,
            child: Column(
              children: <Widget>[
                IconButton(
                  icon: Icon(Icons.favorite_border),
                  onPressed: () {},
                ),
                BookRating(
                  ratings: bookRating,
                ),
              ],
            ),
          ),
          Positioned(
            top: 160.0,
            child: Container(
              height: 85.0,
              width: 202.0,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(left: 24.0),
                    child: RichText(
                      maxLines: 2,
                      text: TextSpan(
                        style: TextStyle(
                          color: kBlackColor,
                        ),
                        children: [
                          TextSpan(
                            text: '$title\n',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          TextSpan(
                            text: '$author',
                            style: TextStyle(color: kLightBlackColor),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Spacer(),
                  Row(
                    children: <Widget>[
                      GestureDetector(
                        onTap: pressDetails,
                        child: Container(
                          width: 101.0,
                          padding: EdgeInsets.symmetric(vertical: 10.0),
                          alignment: Alignment.center,
                          child: Text('Details'),
                        ),
                      ),
                      Expanded(
                        child: TwoSideRoundedButton(
                          text: 'Read',
                          onPress: pressRead,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
