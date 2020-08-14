import 'package:flutter/material.dart';
import 'package:furniture_2_flutter/models/Categories.dart';

import 'category_card.dart';

class Categories extends StatelessWidget {
  const Categories({
    Key key,
    @required this.categories,
  }) : super(key: key);

  final List<Category> categories;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(
          categories.length,
          (index) {
            return CategoryCard(
              category: categories[index],
            );
          },
        ),
      ),
    );
  }
}
