import 'package:flutter/material.dart';
import 'package:flutter_social_ui/screens/home_screen.dart';
import 'package:flutter_social_ui/screens/login_screen.dart';
import 'package:flutter_social_ui/screens/profile_screen.dart';

import '../data/data.dart';

class CustomDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          UserAccountsDrawerHeader(
            accountName: Text(
              currentUser.name,
              style: TextStyle(
                fontSize: 25.0,
                fontWeight: FontWeight.bold,
                letterSpacing: 1.5,
              ),
            ),
            accountEmail: Text(''),
            currentAccountPicture: CircleAvatar(
              backgroundImage: AssetImage(currentUser.profileImageUrl),
            ),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(currentUser.backgroundImageUrl),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Column(
            children: <Widget>[
              ListTile(
                title: Text('Home'),
                leading: Icon(Icons.dashboard),
                onTap: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => HomeScreen(),
                    ),
                  );
                },
              ),
              ListTile(
                title: Text('Chat'),
                leading: Icon(Icons.chat),
              ),
              ListTile(
                title: Text('Map'),
                leading: Icon(Icons.location_on),
              ),
              ListTile(
                title: Text('Your Profile'),
                leading: Icon(Icons.account_circle),
                onTap: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ProfileScreen(
                        user: currentUser,
                      ),
                    ),
                  );
                },
              ),
              ListTile(
                title: Text('Settings'),
                leading: Icon(Icons.settings),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.38),
              ListTile(
                title: Text('Logout'),
                leading: Icon(Icons.directions_run),
                onTap: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => LoginScreen(),
                    ),
                  );
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
