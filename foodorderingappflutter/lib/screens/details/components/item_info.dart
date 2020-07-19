import 'package:flutter/material.dart';
import './title_price_ratings.dart';
import '../../../constants.dart';
import './order_button.dart';

class ItemInfo extends StatelessWidget {
  const ItemInfo({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20.0),
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
      ),
      child: Column(
        children: <Widget>[
          shopName(name: 'MacDonald\'s'),
          TitlePriceRating(
            title: 'Cheese Burger',
            noOfRatings: 24,
            rating: 4,
            price: 15,
            onRatingChanged: (value) {},
          ),
          Text(
            'Nowadays, making printed materials have become fast, easy and simple. If you want your promotional material to be an eye-catching object, you should make it colored. By way of using inkjet printer this is not hard to make. An inkjet printer is any printer that places extremely small droplets of ink onto paper to create an image.',
            style: TextStyle(height: 1.5),
          ),
          Spacer(),
          OrderButton(
            onPressed: () {},
          ),
          Spacer(),
        ],
      ),
    );
  }

  Row shopName({@required String name}) {
    return Row(
      children: <Widget>[
        Icon(
          Icons.location_on,
          color: kSecondaryColor,
        ),
        SizedBox(width: 10.0),
        Text(
          name,
          style: TextStyle(color: kSecondaryColor),
        ),
      ],
    );
  }
}
