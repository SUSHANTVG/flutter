import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import './components/app_bar.dart';
import './components/body.dart';
import '../../components/bottom_navbar.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: homeAppBar(context),
      body: Body(),
      bottomNavigationBar: BottomNavBar(),
    );
  }
}
