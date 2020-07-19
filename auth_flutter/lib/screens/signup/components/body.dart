import 'package:auth_flutter/components/already_have_an_account_check.dart';
import 'package:auth_flutter/components/rounded_button.dart';
import 'package:auth_flutter/components/rounded_input_field.dart';
import 'package:auth_flutter/components/rounded_password_field.dart';
import 'package:auth_flutter/constants.dart';
import 'package:auth_flutter/screens/login/login_screen.dart';
import 'package:auth_flutter/screens/signup/components/background.dart';
import 'package:auth_flutter/screens/signup/components/or_divider.dart';
import 'package:auth_flutter/screens/signup/components/social_icon.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'sigup'.toUpperCase(),
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: size.height * 0.02),
            SvgPicture.asset(
              'assets/icons/signup.svg',
              height: size.height * 0.35,
            ),
            SizedBox(height: size.height * 0.03),
            RoundedInputField(
              hintText: 'Your email',
              icon: Icons.person,
              onChanged: (value) {},
            ),
            RoundedPasswordField(
              hintText: 'Password',
              icon: Icons.lock,
              suffixIcon: Icons.visibility,
              onChanged: (value) {},
            ),
            RoundedButton(
              onPress: () {},
              title: 'signup',
              color: kPrimaryColor,
              textColor: Colors.white,
            ),
            SizedBox(height: size.height * 0.03),
            AlreadyHaveAnAccountCheck(
              onPress: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return LoginScreen();
                    },
                  ),
                );
              },
              login: false,
            ),
            OrDivider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SocialIcon(
                  iconSource: 'assets/icons/facebook.svg',
                  onPress: () {},
                ),
                SocialIcon(
                  iconSource: 'assets/icons/twitter.svg',
                  onPress: () {},
                ),
                SocialIcon(
                  iconSource: 'assets/icons/google-plus.svg',
                  onPress: () {},
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
