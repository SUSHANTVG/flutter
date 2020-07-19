import 'package:flutter/material.dart';
import '../constants.dart';
import '../components/bottom_nav_bar.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../components/search_bar.dart';
import '../components/session_card.dart';

class DetailsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Scaffold(
      bottomNavigationBar: BottomNavBar(),
      body: Stack(
        children: <Widget>[
          Container(
            height: size.height * 0.45,
            decoration: BoxDecoration(
              color: kBlueLightColor,
              image: DecorationImage(
                image: AssetImage('assets/images/meditation_bg.png'),
                fit: BoxFit.fitWidth,
              ),
            ),
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(height: size.height * 0.05),
                    Text(
                      'Meditation',
                      style: Theme.of(context)
                          .textTheme
                          .headline4
                          .copyWith(fontWeight: FontWeight.w900),
                    ),
                    SizedBox(height: 10.0),
                    Text(
                      '3-10 MIN Course',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 10.0),
                    SizedBox(
                      width: size.width * 0.5,
                      child: Text(
                          'Live happier and healthier by learning the fundamentals of meditation and mindfulness'),
                    ),
                    SizedBox(
                      width: size.width * 0.5,
                      child: SearchBar(
                        svgSource: 'assets/icons/search.svg',
                        hintText: 'Search',
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 20.0),
                      child: Wrap(
                        runSpacing: 15.0,
                        spacing: 20.0,
                        children: <Widget>[
                          SessionCard(
                            sessionNumber: '01',
                            isDone: true,
                            onPress: () {},
                          ),
                          SessionCard(
                            sessionNumber: '02',
                            onPress: () {},
                          ),
                          SessionCard(
                            sessionNumber: '03',
                            onPress: () {},
                          ),
                          SessionCard(
                            sessionNumber: '04',
                            onPress: () {},
                          ),
                          SessionCard(
                            sessionNumber: '05',
                            onPress: () {},
                          ),
                          SessionCard(
                            sessionNumber: '06',
                            onPress: () {},
                          ),
                        ],
                      ),
                    ),
                    Text(
                      'Meditation',
                      style: Theme.of(context)
                          .textTheme
                          .headline6
                          .copyWith(fontWeight: FontWeight.w900),
                    ),
                    SizedBox(height: 20.0),
                    Container(
                      height: 90.0,
                      padding: EdgeInsets.all(10.0),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(13.0),
                        boxShadow: [
                          BoxShadow(
                            offset: Offset(0, 17),
                            blurRadius: 23,
                            spreadRadius: -13,
                            color: kShadowColor,
                          ),
                        ],
                      ),
                      child: Row(
                        children: <Widget>[
                          SvgPicture.asset(
                              'assets/icons/Meditation_women_small.svg'),
                          SizedBox(width: 20.0),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: <Widget>[
                                Text(
                                  'Basics 2',
                                  style: Theme.of(context).textTheme.subtitle2,
                                ),
                                Text('Start your deepen you practice'),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: SvgPicture.asset('assets/icons/Lock.svg'),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
