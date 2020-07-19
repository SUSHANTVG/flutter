import 'package:flutter/material.dart';
import 'package:furniture_flutter/constants.dart';
import 'package:furniture_flutter/models/product.dart';

import 'bottom_button.dart';
import 'list_of_colors.dart';
import 'product_poster.dart';

class Body extends StatelessWidget {
  final Product product;

  const Body({
    Key key,
    this.product,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          Container(
            width: size.width,
            padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
            decoration: BoxDecoration(
              color: kBackgroundColor,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(50.0),
                bottomRight: Radius.circular(50.0),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Center(
                  child: Hero(
                    tag: '${product.id}',
                    child: ProductPoster(product: product),
                  ),
                ),
                ListOfColors(),
                SizedBox(height: kDefaultPadding),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: kDefaultPadding / 2),
                  child: Text(
                    product.title,
                    style: Theme.of(context).textTheme.headline6,
                  ),
                ),
                Text(
                  '\$${product.price}',
                  style: TextStyle(
                    color: kPrimaryColor,
                    fontSize: 18.0,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: kDefaultPadding / 2),
                  child: Text(
                    product.description,
                    style: TextStyle(
                      color: kTextLightColor,
                    ),
                  ),
                ),
                SizedBox(height: kDefaultPadding),
              ],
            ),
          ),
          BottomButton(
            chatButton: () {
              print('chat pressed');
            },
            addToCartButton: () {
              print('add to cart pressed');
            },
          ),
        ],
      ),
    );
  }
}
