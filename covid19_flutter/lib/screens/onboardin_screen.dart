import 'package:flutter/material.dart';
import '../models/onboardingModel.dart';
import './home_screen.dart';

class OnboardingScreen extends StatelessWidget {
  final _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xFFFFFBF5),
              Color(0xFFFFFFFF),
            ],
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 40.0, horizontal: 20.0),
          child: Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'Covid-19',
                        style: Theme.of(context).textTheme.caption,
                      ),
                      Text(
                        'Prevention Tips',
                        style: Theme.of(context).textTheme.headline6,
                      ),
                    ],
                  ),
                  Spacer(),
                  FlatButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => HomeScreen(),
                        ),
                      );
                    },
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(26.0),
                    ),
                    child: Text('Skip'),
                  ),
                ],
              ),
              Expanded(
                child: PageView.builder(
                  itemCount: onboardingScreen.length,
                  controller: _pageController,
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Column(
                        children: <Widget>[
                          SizedBox(height: 80.0),
                          Image.asset(onboardingScreen[index].imageSource),
                          SizedBox(height: 50.0),
                          Text(
                            onboardingScreen[index].title,
                            style: Theme.of(context)
                                .textTheme
                                .headline4
                                .copyWith(color: Colors.black),
                          ),
                          SizedBox(height: 20.0),
                          Text(
                            onboardingScreen[index].subtitle,
                            textAlign: TextAlign.center,
                            style: Theme.of(context).textTheme.headline6,
                          ),
                          SizedBox(height: 30.0),
                          SizedBox(
                            width: 200.0,
                            height: 55.0,
                            child: FlatButton(
                              onPressed: () {
                                if (index == onboardingScreen.length - 1) {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => HomeScreen(),
                                    ),
                                  );
                                } else {
                                  _pageController.nextPage(
                                    duration: Duration(milliseconds: 250),
                                    curve: Curves.fastOutSlowIn,
                                  );
                                }
                              },
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(26.0),
                              ),
                              child: Text(
                                index == onboardingScreen.length - 1
                                    ? 'Start Now'
                                    : 'Next Step',
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                              color: Color(0xFFF5AD47),
                            ),
                          ),
                          Spacer(),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: List.generate(
                              onboardingScreen.length,
                              (i) {
                                return Container(
                                  margin: EdgeInsets.symmetric(horizontal: 5.0),
                                  width: i == index ? 10.0 : 5.0,
                                  height: i == index ? 10.0 : 5.0,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: i == index
                                        ? Color(0xFFF5AD47)
                                        : Color(0xFFFBDDB4),
                                  ),
                                );
                              },
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
