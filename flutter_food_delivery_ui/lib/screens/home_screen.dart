import 'package:flutter/material.dart';
import 'package:flutter_food_delivery_ui/components/nearby_restaurants.dart';
import 'package:flutter_food_delivery_ui/components/recent_orders.dart';
import 'package:flutter_food_delivery_ui/components/search_bar.dart';
import 'package:flutter_food_delivery_ui/screens/cart_screen.dart';

import '../data/data.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: homeAppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            SearchBar(
              hintText: 'Search Food or Restaurant',
            ),
            RecentOrders(),
            NearbyRestaurants(),
          ],
        ),
      ),
    );
  }

  AppBar homeAppBar() {
    return AppBar(
      title: Text('Food Delivery'),
      leading: IconButton(
        icon: Icon(
          Icons.account_circle,
          size: 30.0,
        ),
        onPressed: () {},
      ),
      actions: <Widget>[
        FlatButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return CartScreen();
                },
              ),
            );
          },
          child: Text(
            'Cart (${currentUser.cart.length})',
            style: TextStyle(
              color: Colors.white,
              fontSize: 20.0,
            ),
          ),
        ),
      ],
    );
  }
}
