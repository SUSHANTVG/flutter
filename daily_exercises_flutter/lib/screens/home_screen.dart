import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../components/category_card.dart';
import '../components/bottom_nav_bar.dart';
import './details_screen.dart';
import '../components/search_bar.dart';

class HomeScreen extends StatelessWidget {
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
              color: Color(0xfff5ceb8),
              image: DecorationImage(
                image: AssetImage('assets/images/undraw_pilates_gpdb.png'),
                alignment: Alignment.centerLeft,
              ),
            ),
          ),
          SafeArea(
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 25.0, horizontal: 20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Align(
                    alignment: Alignment.topRight,
                    child: Container(
                      height: 52.0,
                      width: 52.0,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: Color(0xfff2bea1),
                        shape: BoxShape.circle,
                      ),
                      child: SvgPicture.asset(
                        'assets/icons/menu.svg',
                      ),
                    ),
                  ),
                  Text(
                    'Good Morning\nSushant',
                    style: Theme.of(context)
                        .textTheme
                        .headline4
                        .copyWith(fontWeight: FontWeight.w900),
                  ),
                  SearchBar(
                    svgSource: 'assets/icons/search.svg',
                    hintText: 'Search',
                  ),
                  Expanded(
                    child: GridView.count(
                      crossAxisCount: 2,
                      childAspectRatio: 0.85,
                      crossAxisSpacing: 20.0,
                      mainAxisSpacing: 20.0,
                      children: <Widget>[
                        CategoryCard(
                          svgSource: 'assets/icons/Hamburger.svg',
                          title: 'Diet\nRecommendation',
                          onPress: () {
                            print('card pressed');
                          },
                        ),
                        CategoryCard(
                          svgSource: 'assets/icons/Exercises.svg',
                          title: 'Kegel\nExercises',
                          onPress: () {
                            print('card pressed');
                          },
                        ),
                        CategoryCard(
                          svgSource: 'assets/icons/Meditation.svg',
                          title: 'Meditation',
                          onPress: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) {
                                  return DetailsScreen();
                                }),
                            );
                          },
                        ),
                        CategoryCard(
                          svgSource: 'assets/icons/yoga.svg',
                          title: 'Yoga',
                          onPress: () {
                            print('card pressed');
                          },
                        ),
                      ],
                    ),
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
