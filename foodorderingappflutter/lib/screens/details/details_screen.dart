import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import './components/body.dart';
import '../../constants.dart';
import './components/app_bar.dart';

class DetailsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: detailsAppBar(context),
      body: Body(),
    );
  }
}
