import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../components/rounded_button.dart';
import '../screens/home_screen.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/Bitmap.png'),
            fit: BoxFit.fill,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RichText(
              text: TextSpan(
                style: Theme.of(context).textTheme.display3,
                children: [
                  TextSpan(text: 'flamin'),
                  TextSpan(
                    text: 'go.',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.6,
              child: RoundedButton(
                text: 'start reading',
                fontSize: 20.0,
                onPress: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) {
                      return HomeScreen();
                    }),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
