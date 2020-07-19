import 'package:ebookappflutter/components/rounded_button.dart';
import 'package:flutter/cupertino.dart';

import '../components/book_rating.dart';
import 'package:flutter/material.dart';
import '../constants.dart';
import '../components/book_info.dart';
import '../components/chapter_card.dart';

class DetailsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Stack(
                alignment: Alignment.topCenter,
                children: <Widget>[
                  Container(
                    height: MediaQuery.of(context).size.height * 0.4,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/images/bg.png'),
                        fit: BoxFit.fitWidth,
                      ),
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(50.0),
                        bottomRight: Radius.circular(50.0),
                      ),
                    ),
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 24.0),
                      child: Column(
                        children: <Widget>[
                          SizedBox(
                              height: MediaQuery.of(context).size.height * 0.1),
                          BookInfo(),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        top: MediaQuery.of(context).size.height * 0.4 - 30.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        ChapterCard(
                          chapterNumber: 1,
                          name: 'Money',
                          tag: 'Life is about change',
                          onPress: () {},
                        ),
                        ChapterCard(
                          chapterNumber: 2,
                          name: 'Power',
                          tag: 'Everyone loves power',
                          onPress: () {},
                        ),
                        ChapterCard(
                          chapterNumber: 3,
                          name: 'Influence',
                          tag: 'Influence easily like never before',
                          onPress: () {},
                        ),
                        ChapterCard(
                          chapterNumber: 4,
                          name: 'Win',
                          tag: 'Winning is what matters',
                          onPress: () {},
                        ),
                        SizedBox(height: 10.0),
                      ],
                    ),
                  ),
                ],
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
                          TextSpan(text: 'You might also '),
                          TextSpan(
                            text: 'like...',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 20.0),
                    Stack(
                      children: <Widget>[
                        Container(
                          height: 180.0,
                          width: double.infinity,
                        ),
                        Positioned(
                          bottom: 0,
                          left: 0,
                          right: 0,
                          child: Container(
                            padding: EdgeInsets.only(
                                left: 24.0, top: 24.0, right: 150.0),
                            height: 160.0,
                            width: double.infinity,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(29.0),
                              color: Color(0xFFFFF8F9),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                RichText(
                                  text: TextSpan(
                                    style: TextStyle(color: kBlackColor),
                                    children: [
                                      TextSpan(
                                        text:
                                            'How To Win People & Influence People\n',
                                        style: TextStyle(fontSize: 20.0),
                                      ),
                                      TextSpan(
                                        text: 'Dale Carnegie',
                                        style:
                                            TextStyle(color: kLightBlackColor),
                                      )
                                    ],
                                  ),
                                ),
                                Row(
                                  children: <Widget>[
                                    BookRating(
                                      ratings: 4.9,
                                    ),
                                    SizedBox(width: 20.0),
                                    Expanded(
                                      child: RoundedButton(
                                        text: 'Read',
                                        onPress: () {},
                                        verticalPadding: 10.0,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        Positioned(
                          top: 0,
                          right: 0,
                          child: Image.asset(
                            'assets/images/book-3.png',
                            height: 150.0,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 40.0),
            ],
          ),
        ),
      ),
    );
  }
}
