import 'package:flutter/material.dart';
import 'package:furniture_flutter/constants.dart';
import 'package:furniture_flutter/models/product.dart';

import 'components/app_bar.dart';
import 'components/body.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({
    Key key,
    this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: buildAppBar(context),
      body: Body(
        product: product,
      ),
    );
  }
}
