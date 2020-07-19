import 'package:flutter/material.dart';
import 'package:furniture_flutter/components/search_bar.dart';
import 'package:furniture_flutter/constants.dart';
import 'package:furniture_flutter/models/product.dart';
import 'package:furniture_flutter/screens/details_screen/details_screen.dart';

import 'category_list.dart';
import 'product_card.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SearchBar(
          onChanged: (value) {
            print(value);
          },
        ),
        CategoryList(),
        SizedBox(height: kDefaultPadding / 2),
        Expanded(
          child: Stack(
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(top: 90.0),
                decoration: BoxDecoration(
                  color: kBackgroundColor,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40.0),
                    topRight: Radius.circular(40.0),
                  ),
                ),
              ),
              // ProductCard(),
              ListView.builder(
                itemBuilder: (context, index) {
                  return ProductCard(
                    productIndex: index,
                    product: products[index],
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return DetailsScreen(
                              product: products[index],
                            );
                          },
                        ),
                      );
                    },
                  );
                },
                itemCount: products.length,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
