import 'package:flutter/material.dart';
import 'package:furniture_flutter/constants.dart';
import 'package:furniture_flutter/models/product.dart';

import 'components/app_bar.dart';
import 'components/body.dart';

class ProductsScreen extends StatelessWidget {
  final Product product;

  const ProductsScreen({
    Key key,
    this.product,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: buildAppBar(),
      body: Body(),
    );
  }
}
