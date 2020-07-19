import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:furniture_flutter/constants.dart';

class BottomButton extends StatelessWidget {
  const BottomButton({
    Key key,
    this.chatButton,
    this.addToCartButton,
  }) : super(key: key);

  final Function chatButton;
  final Function addToCartButton;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(vertical: 55.0),
      padding: EdgeInsets.symmetric(
        horizontal: kDefaultPadding / 2,
        vertical: kDefaultPadding / 2,
      ),
      width: size.width * 0.8,
      decoration: BoxDecoration(
        color: kSecondaryColor,
        borderRadius: BorderRadius.circular(30.0),
      ),
      child: Row(
        children: <Widget>[
          FlatButton.icon(
            onPressed: chatButton,
            icon: SvgPicture.asset('assets/icons/chat.svg'),
            label: Text(
              'Chat',
              style: TextStyle(color: Colors.white),
            ),
          ),
          Spacer(),
          FlatButton.icon(
            onPressed: addToCartButton,
            icon: SvgPicture.asset('assets/icons/shopping-bag.svg'),
            label: Text(
              'Add to cart',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
