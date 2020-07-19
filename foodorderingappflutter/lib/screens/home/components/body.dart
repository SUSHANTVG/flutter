import 'package:flutter/material.dart';
import '../../../components/search_bar.dart';
import './category_list.dart';
import './item_list.dart';
import './discount_card.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        SearchBar(
          onChanged: (value) {
            print(value);
          },
        ),
        CategoryList(),
        ItemList(),
        DiscountCard(),
      ],
    );
  }
}
