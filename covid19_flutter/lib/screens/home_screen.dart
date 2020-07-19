import 'package:flutter/material.dart';
import '../components/bottom_navbar_container.dart';
import '../components/suggestion_card.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavBarContainer(),
      body: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.symmetric(vertical: 40.0, horizontal: 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                IconButton(
                  icon: Icon(Icons.menu),
                  onPressed: () {},
                ),
                Text(
                  'covid-19'.toUpperCase(),
                  style: Theme.of(context).textTheme.headline6,
                ),
                IconButton(
                  icon: Icon(Icons.search),
                  onPressed: () {},
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 40.0),
            decoration: BoxDecoration(
              color: Color(0xFFFBDDB4),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(26.5),
                bottomLeft: Radius.circular(26.5),
              ),
            ),
            child: Padding(
              padding: EdgeInsets.all(25.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Emergency',
                    style: Theme.of(context).textTheme.subtitle2,
                  ),
                  SizedBox(height: 5.0),
                  Text(
                    'Have you infected COVID-19?',
                    style: Theme.of(context).textTheme.headline5,
                  ),
                  SizedBox(height: 15.0),
                  Row(
                    children: <Widget>[
                      Expanded(
                        child: SizedBox(
                          height: 45.0,
                          child: FlatButton(
                            onPressed: () {},
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(26.0),
                            ),
                            child: Text(
                              'Call Now',
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                            color: Color(0xFFF5AD47),
                          ),
                        ),
                      ),
                      SizedBox(width: 15.0),
                      Expanded(
                        child: SizedBox(
                          height: 45.0,
                          child: FlatButton(
                            onPressed: () {},
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(26.0),
                            ),
                            child: Text(
                              'Find Doctor',
                              style: TextStyle(
                                color: Colors.black,
                              ),
                            ),
                            color: Color(0xFFFFF9EF),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Doctor Suggestions',
                    style: Theme.of(context).textTheme.headline6,
                  ),
                  Expanded(
                    child: GridView.count(
                      crossAxisCount: 2,
                      crossAxisSpacing: 20.0,
                      mainAxisSpacing: 20.0,
                      children: <Widget>[
                        SuggestionCard(
                          backgroundColor: Colors.purple[100].withOpacity(0.5),
                          icon: Icons.group,
                          iconColor: Color(0xFFF5AD47),
                          title: 'People Awarness',
                        ),
                        SuggestionCard(
                          backgroundColor: Colors.blueAccent.withOpacity(0.5),
                          icon: Icons.fitness_center,
                          iconColor: Colors.blueAccent,
                          title: 'Excercise Suggestion',
                        ),
                        SuggestionCard(
                          backgroundColor: Colors.blue.withOpacity(0.5),
                          icon: Icons.fastfood,
                          iconColor: Colors.blue,
                          title: 'Food Suggestions',
                        ),
                        SuggestionCard(
                          backgroundColor: Colors.pink[100].withOpacity(0.5),
                          icon: Icons.local_pharmacy,
                          iconColor: Colors.pink[300],
                          title: 'Medicine Suggestion',
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
