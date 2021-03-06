import 'package:flutter/material.dart';
import 'package:furniture_2_flutter/constants.dart';
import 'package:furniture_2_flutter/models/Product.dart';
import 'package:furniture_2_flutter/size_config.dart';

import 'product_description.dart';
import 'product_info.dart';

class Body extends StatelessWidget {
  final Product product;

  const Body({
    Key key,
    @required this.product,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double defaultSize = SizeConfig.defaultSize;

    return SingleChildScrollView(
      child: SizedBox(
        width: double.infinity,
        height: SizeConfig.screenHeight - AppBar().preferredSize.height,
        child: Stack(
          children: <Widget>[
            ProductInfo(product: product),
            Positioned(
              top: defaultSize * 37.5,
              left: 0,
              right: 0,
              child: ProductDescription(
                product: product,
                onPress: () {},
              ),
            ),
            Positioned(
              top: defaultSize * 9.5,
              right: -defaultSize * 7.5,
              child: Hero(
                tag: product.id,
                child: Image.network(
                  product.image,
                  height: defaultSize * 37.8,
                  width: defaultSize * 36.4,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
