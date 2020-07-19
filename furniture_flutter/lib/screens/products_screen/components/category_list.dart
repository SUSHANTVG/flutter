import 'package:flutter/material.dart';
import 'package:furniture_flutter/constants.dart';

class CategoryList extends StatefulWidget {
  @override
  _CategoryListState createState() => _CategoryListState();
}

class _CategoryListState extends State<CategoryList> {
  int selectedIndex = 0;
  List categories = ['All', 'Sofa', 'Park Bench', 'Armchair'];

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: kDefaultPadding / 2),
      height: 30.0,
      child: ListView.builder(
        itemCount: categories.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return _buildList(index);
        },
      ),
    );
  }

  Widget _buildList(int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedIndex = index;
        });
      },
      child: Container(
        alignment: Alignment.center,
        margin: EdgeInsets.only(
          left: kDefaultPadding,
          right: index == categories.length - 1 ? kDefaultPadding : 0,
        ),
        padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6.0),
          color: index == selectedIndex
              ? Colors.white.withOpacity(0.4)
              : Colors.transparent,
        ),
        child: Text(
          categories[index],
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
