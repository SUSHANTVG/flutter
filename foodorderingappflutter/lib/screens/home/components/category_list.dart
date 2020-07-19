import 'package:flutter/material.dart';
import '../../../constants.dart';
import './category_item.dart';

class CategoryList extends StatefulWidget {
  const CategoryList({
    Key key,
  }) : super(key: key);

  @override
  _CategoryListState createState() => _CategoryListState();
}

class _CategoryListState extends State<CategoryList> {
  int _selectedCategory = 0;
  final List<String> categories = [
    'Combo Meal',
    'Chicken',
    'Bevarages',
    'Snacks & Sides'
  ];

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      height: size.height * 0.075,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 15.0),
            child: GestureDetector(
              onTap: () {
                setState(() {
                  _selectedCategory = index;
                });
              },
              child: Column(
                children: <Widget>[
                  Text(
                    categories[index],
                    style: index == _selectedCategory
                        ? TextStyle(
                            color: kTextColor,
                            fontWeight: FontWeight.bold,
                          )
                        : TextStyle(
                            fontSize: 12.0,
                          ),
                  ),
                  if (index == _selectedCategory)
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 5.0),
                      height: 3.0,
                      width: 22.0,
                      decoration: BoxDecoration(
                        color: kPrimaryColor,
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
