import 'package:flutter/material.dart';
import './screens/onboardin_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Product-Sans',
      ),
      home: OnboardingScreen(),
    );
  }
}
