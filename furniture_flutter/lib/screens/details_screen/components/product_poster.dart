import 'package:flutter/material.dart';
import 'package:furniture_flutter/constants.dart';
import 'package:furniture_flutter/models/product.dart';

class ProductPoster extends StatelessWidget {
  const ProductPoster({
    Key key,
    @required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      margin: EdgeInsets.symmetric(vertical: kDefaultPadding),
      height: size.width * 0.8,
      child: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          Container(
            height: size.width * 0.7,
            width: size.width * 0.7,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.white,
            ),
          ),
          Image.asset(
            product.image,
            height: size.width * 0.75,
            width: size.width * 0.75,
            fit: BoxFit.cover,
          ),
        ],
      ),
    );
  }
}
