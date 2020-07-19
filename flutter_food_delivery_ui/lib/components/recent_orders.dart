import 'package:flutter/material.dart';
import 'package:flutter_food_delivery_ui/components/headline_text.dart';
import 'package:flutter_food_delivery_ui/components/rounded_add_button.dart';

import '../data/data.dart';
import '../models/order.dart';

class RecentOrders extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        HeadlineText(
          title: 'Recent Orders',
        ),
        Container(
          height: size.height * 0.15,
          child: ListView.builder(
            padding: EdgeInsets.only(left: 10.0),
            scrollDirection: Axis.horizontal,
            itemCount: currentUser.orders.length,
            itemBuilder: (context, int index) {
              Order order = currentUser.orders[index];
              return _buildRecentOrders(context, order, size);
            },
          ),
        ),
      ],
    );
  }

  _buildRecentOrders(BuildContext context, Order order, Size size) {
    return Container(
      margin: EdgeInsets.all(10.0),
      width: size.width * 0.77,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15.0),
        border: Border.all(
          color: Colors.grey[200],
          width: 1.0,
        ),
      ),
      child: Row(
        children: <Widget>[
          ClipRRect(
            borderRadius: BorderRadius.circular(15.0),
            child: Image(
              height: 120.0,
              width: 120.0,
              fit: BoxFit.cover,
              image: AssetImage(order.food.imageUrl),
            ),
          ),
          Expanded(
            flex: 50,
            child: Container(
              margin: EdgeInsets.all(12.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    order.food.name,
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),
                  SizedBox(height: 4.0),
                  Text(
                    order.restaurant.name,
                    style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.w600,
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),
                  SizedBox(height: 4.0),
                  Text(
                    order.date,
                    style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.w600,
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
            ),
          ),
          Spacer(),
          RoundedAddButton(
            onPress: () {},
          ),
        ],
      ),
    );
  }
}
