import '../components/book_rating.dart';
import '../components/two_side_rounded_button.dart';
import 'package:flutter/material.dart';
import '../components/reading_list_card.dart';
import '../constants.dart';
import '../screens/details_screen.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/main_page_bg.png'),
            alignment: Alignment.topCenter,
            fit: BoxFit.fitWidth,
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.1,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24.0),
                child: RichText(
                  text: TextSpan(
                    style: Theme.of(context).textTheme.headline4,
                    children: [
                      TextSpan(text: 'What are you \nreading '),
                      TextSpan(
                        text: 'today?',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 30.0),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: <Widget>[
                    ReadingListCard(
                      image: 'assets/images/book-1.png',
                      title: 'Crushing & Influence',
                      author: 'Gary Venchuk',
                      bookRating: 4.9,
                      pressDetails: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) {
                            return DetailsScreen();
                          }),
                        );
                      },
                      pressRead: () {},
                    ),
                    ReadingListCard(
                      image: 'assets/images/book-2.png',
                      title: 'Top 10 Business Hacks',
                      author: 'Herman Joel',
                      bookRating: 4.8,
                      pressDetails: () {},
                      pressRead: () {},
                    ),
                    SizedBox(width: 30.0),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 24.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    RichText(
                      text: TextSpan(
                        style: Theme.of(context).textTheme.headline4,
                        children: [
                          TextSpan(text: 'Best of the '),
                          TextSpan(
                            text: 'day',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                    bestOfTheDayCard(context),
                    RichText(
                      text: TextSpan(
                        style: Theme.of(context).textTheme.headline4,
                        children: [
                          TextSpan(text: 'Continue '),
                          TextSpan(
                            text: 'reading...',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 20.0),
                    Container(
                      height: 80.0,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(38.5),
                        boxShadow: [
                          BoxShadow(
                            offset: Offset(0, 10),
                            blurRadius: 33,
                            color: kShadowColor,
                          ),
                        ],
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(38.5),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Expanded(
                              child: Padding(
                                padding:
                                    EdgeInsets.only(left: 30.0, right: 20.0),
                                child: Row(
                                  children: <Widget>[
                                    Expanded(
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: <Widget>[
                                          Text(
                                            'Crushing & Influence',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold),
                                          ),
                                          Text(
                                            'Gary Venchuk',
                                            style: TextStyle(
                                                color: kLightBlackColor),
                                          ),
                                          Align(
                                            alignment: Alignment.bottomRight,
                                            child: Text(
                                              'Chapter 7 of 10',
                                              style: TextStyle(
                                                fontSize: 15.0,
                                                color: kLightBlackColor,
                                              ),
                                            ),
                                          ),
                                          SizedBox(height: 5.0),
                                        ],
                                      ),
                                    ),
                                    Image.asset(
                                      'assets/images/book-1.png',
                                      width: 55.0,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              height: 7,
                              width: MediaQuery.of(context).size.width * 0.65,
                              decoration: BoxDecoration(
                                color: kProgressIndicator,
                                borderRadius: BorderRadius.circular(7),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 40.0),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Container bestOfTheDayCard(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 20.0),
      width: double.infinity,
      height: 205.0,
      child: Stack(
        children: <Widget>[
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              padding: EdgeInsets.only(
                left: 24.0,
                top: 24.0,
                right: MediaQuery.of(context).size.width * 0.35,
              ),
              height: 185.0,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Color(0xFFEAEAEA).withOpacity(0.45),
                borderRadius: BorderRadius.circular(29.0),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'New Your Time Best for 11th March 2020',
                    style: TextStyle(
                      fontSize: 12.0,
                      color: kLightBlackColor,
                    ),
                  ),
                  SizedBox(height: 5.0),
                  Text(
                    'How To Win \nFriends & Influence People',
                    style: Theme.of(context).textTheme.headline6,
                  ),
                  Text(
                    'Dale Carnegie',
                    style: TextStyle(color: kLightBlackColor),
                  ),
                  SizedBox(height: 10.0),
                  Row(
                    children: <Widget>[
                      BookRating(ratings: 4.9),
                      SizedBox(width: 10.0),
                      Expanded(
                        child: Text(
                          'When the earth was flat and everyone wanted to win the game of the best and people...',
                          maxLines: 3,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            fontSize: 13.0,
                            color: kLightBlackColor,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            right: 0,
            top: 0,
            child: Image.asset(
              'assets/images/book-3.png',
              width: MediaQuery.of(context).size.width * 0.37,
            ),
          ),
          Positioned(
            bottom: 0,
            right: 0,
            child: SizedBox(
              height: 40.0,
              width: MediaQuery.of(context).size.width * 0.3,
              child: TwoSideRoundedButton(
                text: 'Read',
                onPress: () {},
              ),
            ),
          ),
        ],
      ),
    );
  }
}
