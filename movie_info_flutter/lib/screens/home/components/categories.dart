import 'package:flutter/material.dart';
import 'package:movie_info_flutter/constants.dart';

class CategoryList extends StatefulWidget {
  @override
  _CategoryListState createState() => _CategoryListState();
}

class _CategoryListState extends State<CategoryList> {
  int selectedCategory = 0;
  List<String> categories = ['In Theatre', 'Box Office', 'Coming Soon'];

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: kDefaultPadding / 2),
      height: 60.0,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (BuildContext context, int index) {
          return buildCategory(index, context);
        },
      ),
    );
  }

  Padding buildCategory(int index, BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: GestureDetector(
        onTap: () {
          setState(() {
            selectedCategory = index;
          });
        },
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              categories[index],
              style: Theme.of(context).textTheme.headline5.copyWith(
                    fontWeight: FontWeight.w600,
                    color: index == selectedCategory
                        ? kTextColor
                        : Colors.black.withOpacity(0.4),
                  ),
            ),
            Container(
              height: 6.0,
              width: 40.0,
              margin: EdgeInsets.symmetric(vertical: kDefaultPadding / 2),
              decoration: BoxDecoration(
                color:
                    index == selectedCategory ? Colors.red : Colors.transparent,
                borderRadius: BorderRadius.circular(10.0),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
