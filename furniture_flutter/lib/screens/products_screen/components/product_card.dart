import 'package:flutter/material.dart';
import 'package:furniture_flutter/constants.dart';
import 'package:furniture_flutter/models/product.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({
    Key key,
    this.productIndex,
    this.product,
    this.onTap,
  }) : super(key: key);

  final int productIndex;
  final Product product;
  final Function onTap;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: kDefaultPadding,
        vertical: kDefaultPadding / 2,
      ),
      height: 160.0,
      child: InkWell(
        onTap: onTap,
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: <Widget>[
            Container(
              height: 136,
              decoration: BoxDecoration(
                color: productIndex.isEven ? kBlueColor : kSecondaryColor,
                borderRadius: BorderRadius.circular(22.0),
                boxShadow: [kDefaultShadow],
              ),
              child: Container(
                margin: EdgeInsets.only(right: 10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(22.0),
                ),
              ),
            ),
            Positioned(
              top: 0,
              right: 0,
              child: Hero(
                tag: '${product.id}',
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
                  height: 160.0,
                  width: 200.0,
                  child: Image.asset(
                    product.image,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: 0,
              left: 0,
              child: SizedBox(
                height: 136.0,
                width: size.width - 200,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Spacer(),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: kDefaultPadding),
                      child: Text(
                        product.title,
                        style: Theme.of(context)
                            .textTheme
                            .button
                            .copyWith(fontSize: 18.0),
                      ),
                    ),
                    Spacer(),
                    Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: kDefaultPadding * 1.5,
                        vertical: kDefaultPadding / 4,
                      ),
                      decoration: BoxDecoration(
                        color: kSecondaryColor.withOpacity(0.5),
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(22.0),
                          bottomLeft: Radius.circular(22.0),
                        ),
                      ),
                      child: Text(
                        '\$${product.price}',
                        style: Theme.of(context).textTheme.button,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
