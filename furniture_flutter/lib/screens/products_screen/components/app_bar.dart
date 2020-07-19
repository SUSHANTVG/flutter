import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

AppBar buildAppBar() {
  return AppBar(
    elevation: 0.0,
    title: Text(
      'Dashboard',
      style: GoogleFonts.poppins(
        fontSize: 26.0,
      ),
    ),
    actions: <Widget>[
      IconButton(
        icon: SvgPicture.asset('assets/icons/notification.svg'),
        onPressed: () {},
      ),
    ],
  );
}
