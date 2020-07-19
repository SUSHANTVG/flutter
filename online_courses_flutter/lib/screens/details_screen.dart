import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../constants.dart';
import '../components/course_content.dart';

class DetailsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: Color(0xFFF5F4EF),
          image: DecorationImage(
            image: AssetImage('assets/images/ux_big.png'),
            alignment: Alignment.topRight,
          ),
        ),
        child: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(
                left: 20.0,
                right: 20.0,
                top: 50.0,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: SvgPicture.asset('assets/icons/arrow-left.svg'),
                      ),
                      SvgPicture.asset('assets/icons/more-vertical.svg'),
                    ],
                  ),
                  SizedBox(height: 30.0),
                  ClipPath(
                    clipper: BestSellerClipper(),
                    child: Container(
                      padding: EdgeInsets.fromLTRB(10, 5, 20, 5),
                      decoration: BoxDecoration(
                        color: kBestSellerColor,
                      ),
                      child: Text(
                        'bestseller'.toUpperCase(),
                        style: TextStyle(fontWeight: FontWeight.w600),
                      ),
                    ),
                  ),
                  SizedBox(height: 16.0),
                  Text(
                    'Design Thinking',
                    style: kHeadingTextStyle,
                  ),
                  SizedBox(height: 16.0),
                  Row(
                    children: <Widget>[
                      SvgPicture.asset('assets/icons/person.svg'),
                      SizedBox(width: 5.0),
                      Text('18k'),
                      SizedBox(width: 20.0),
                      SvgPicture.asset('assets/icons/star.svg'),
                      SizedBox(width: 5.0),
                      Text('4.8'),
                    ],
                  ),
                  SizedBox(height: 20.0),
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: '₹50 ',
                          style: kHeadingTextStyle.copyWith(fontSize: 32.0),
                        ),
                        TextSpan(
                          text: '₹70',
                          style: TextStyle(
                            color: kTextColor.withOpacity(0.5),
                            decoration: TextDecoration.lineThrough,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 60.0),
            Expanded(
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(50.0),
                    topRight: Radius.circular(50.0),
                  ),
                ),
                child: Stack(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.all(30.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            'Course Content',
                            style: kTitleTextStyle,
                          ),
                          SizedBox(height: 30.0),
                          CourseContent(
                            number: '01',
                            title: 'Welcome to the Course',
                            duration: '5:35',
                            isDone: true,
                          ),
                          CourseContent(
                            number: '02',
                            title: 'Design Thinking - Intro',
                            duration: '19:04',
                            isDone: true,
                          ),
                          CourseContent(
                            number: '03',
                            title: 'Design Thinking Process',
                            duration: '12:48',
                          ),
                          CourseContent(
                            number: '04',
                            title: 'Customer Perspective',
                            duration: '37:54',
                          ),
                        ],
                      ),
                    ),
                    Positioned(
                      bottom: 0,
                      left: 0,
                      right: 0,
                      child: Container(
                        padding: EdgeInsets.all(20.0),
                        height: 100.0,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(50.0),
                            topRight: Radius.circular(50.0),
                          ),
                          boxShadow: [
                            BoxShadow(
                              offset: Offset(0, 4),
                              blurRadius: 50,
                              color: kTextColor.withOpacity(0.1),
                            ),
                          ],
                        ),
                        child: Row(
                          children: <Widget>[
                            Container(
                              padding: EdgeInsets.all(14.0),
                              height: 56.0,
                              width: 80.0,
                              decoration: BoxDecoration(
                                color: Color(0xFFFFEDEE),
                                borderRadius: BorderRadius.circular(40.0),
                              ),
                              child: SvgPicture.asset(
                                  'assets/icons/shopping-bag.svg'),
                            ),
                            SizedBox(width: 20.0),
                            Expanded(
                              child: Container(
                                alignment: Alignment.center,
                                height: 56.0,
                                decoration: BoxDecoration(
                                  color: kBlueColor,
                                  borderRadius: BorderRadius.circular(40.0),
                                ),
                                child: Text(
                                  'Buy Now',
                                  style: kSubtitleTextStyle.copyWith(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class BestSellerClipper extends CustomClipper<Path> {
  @override
  getClip(Size size) {
    var path = Path();
    path.lineTo(size.width - 20, 0);
    path.lineTo(size.width, size.height / 2);
    path.lineTo(size.width - 20, size.height);
    path.lineTo(0, size.height);
    path.lineTo(0, 0);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper oldClipper) {
    return false;
  }
}
