import 'package:flutter/material.dart';
import 'package:furniture_2_flutter/components/title_text.dart';
import 'package:furniture_2_flutter/constants.dart';
import 'package:furniture_2_flutter/services/fetchCategories.dart';
import 'package:furniture_2_flutter/services/fetchProducts.dart';
import 'package:furniture_2_flutter/size_config.dart';

import 'categories.dart';
import 'recommended_products.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double defaultSize = SizeConfig.defaultSize;

    // SingleChildScrollView makes content scrollable on small screen
    return SingleChildScrollView(
      child: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(defaultSize * 2),
              child: TitleText(title: 'Browse by categories'),
            ),
            FutureBuilder(
              future: fetchCategories(),
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  return Categories(categories: snapshot.data);
                } else {
                  return Center(
                    child: Image.asset('assets/ripple.gif'),
                  );
                }
              },
            ),
            Divider(height: 5.0),
            Padding(
              padding: EdgeInsets.all(defaultSize * 2),
              child: TitleText(title: 'Recommended for You'),
            ),
            FutureBuilder(
              future: fetchProducts(),
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  return RecommendedProducts(products: snapshot.data);
                } else {
                  return Center(
                    child: Image.asset('assets/ripple.gif'),
                  );
                }
              },
            )
          ],
        ),
      ),
    );
  }
}
