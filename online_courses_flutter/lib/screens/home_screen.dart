import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../constants.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import '../models/category.dart';
import './details_screen.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
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
                SvgPicture.asset('assets/icons/menu.svg'),
                CircleAvatar(
                  child: Image.asset('assets/images/user.png'),
                ),
              ],
            ),
            SizedBox(height: 30.0),
            Text(
              'Hey Sushant,',
              style: kHeadingTextStyle,
            ),
            Text(
              'Find a course you want to learn',
              style: kSubheadingTextStyle,
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 30.0),
              padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
              decoration: BoxDecoration(
                color: Color(0xFFF5F5F7),
                borderRadius: BorderRadius.circular(40.0),
              ),
              child: TextField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Search for anything',
                  icon: SvgPicture.asset('assets/icons/search.svg'),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  'Categories',
                  style: kTitleTextStyle,
                ),
                Text(
                  'See All',
                  style: kSubtitleTextStyle.copyWith(color: kBlueColor),
                ),
              ],
            ),
            SizedBox(height: 30.0),
            Expanded(
              child: StaggeredGridView.countBuilder(
                padding: EdgeInsets.zero,
                crossAxisCount: 2,
                itemCount: categories.length,
                crossAxisSpacing: 20.0,
                mainAxisSpacing: 20.0,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      if (categories[index].name == 'UX Design') {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) {
                            return DetailsScreen();
                          }),
                        );
                      } else {
                        print('pressed');
                      }
                    },
                    child: Container(
                      padding: EdgeInsets.all(20.0),
                      height: index.isEven ? 200.0 : 240.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16.0),
                        image: DecorationImage(
                          image: AssetImage(categories[index].image),
                          fit: BoxFit.fill,
                        ),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            categories[index].name,
                            style: kTitleTextStyle,
                          ),
                          Text(
                            '${categories[index].numOfCourses} Courses',
                            style: TextStyle(
                              color: kTextColor.withOpacity(0.5),
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
                staggeredTileBuilder: (index) => StaggeredTile.fit(1),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
