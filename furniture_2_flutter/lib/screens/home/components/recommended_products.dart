import 'package:flutter/material.dart';
import 'package:furniture_2_flutter/models/Product.dart';
import 'package:furniture_2_flutter/screens/details/details_screen.dart';
import 'package:furniture_2_flutter/size_config.dart';

import 'product_card.dart';

class RecommendedProducts extends StatelessWidget {
  const RecommendedProducts({
    Key key,
    @required this.products,
  }) : super(key: key);

  final List<Product> products;

  @override
  Widget build(BuildContext context) {
    double defaultSize = SizeConfig.defaultSize;

    return Padding(
      padding: EdgeInsets.all(defaultSize * 2),
      child: GridView.builder(
        itemCount: products.length,
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount:
              SizeConfig.orientation == Orientation.portrait ? 2 : 4,
          mainAxisSpacing: 20,
          crossAxisSpacing: 20,
          childAspectRatio: 0.693,
        ),
        itemBuilder: (context, index) {
          return ProductCard(
            product: products[index],
            onPress: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return DetailsScreen(product: products[index]);
                  },
                ),
              );
            },
          );
        },
      ),
    );
  }
}
