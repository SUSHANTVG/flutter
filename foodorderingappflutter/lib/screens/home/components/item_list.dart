import 'package:flutter/material.dart';
import './item_card.dart';
import '../../details/details_screen.dart';

class ItemList extends StatelessWidget {
  const ItemList({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: <Widget>[
          ItemCard(
            svgSource: 'assets/icons/burger_beer.svg',
            title: 'Burger & Beer',
            shopName: 'MacDonald\'s',
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return DetailsScreen();
                  },
                ),
              );
            },
          ),
          ItemCard(
            svgSource: 'assets/icons/chinese_noodles.svg',
            title: 'Chinese & Noodles',
            shopName: 'Wendy\'s',
            onPressed: () {},
          ),
          ItemCard(
            svgSource: 'assets/icons/burger_beer.svg',
            title: 'Burger & Beer',
            shopName: 'MacDonald\'s',
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
