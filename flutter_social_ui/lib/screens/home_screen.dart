import 'package:flutter/material.dart';
import 'package:flutter_social_ui/components/custom_drawer.dart';
import 'package:flutter_social_ui/components/following_users.dart';
import 'package:flutter_social_ui/components/posts_carousel.dart';

import '../data/data.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  TabController _tabController;
  PageController _pageController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
    _pageController = PageController(
      initialPage: 0,
      viewportFraction: 0.8,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: CustomDrawer(),
      appBar: AppBar(
        iconTheme: IconThemeData(color: Theme.of(context).primaryColor),
        backgroundColor: Colors.white,
        title: Text(
          'frenzy'.toUpperCase(),
          style: TextStyle(
            color: Theme.of(context).primaryColor,
            letterSpacing: 10.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        bottom: TabBar(
          controller: _tabController,
          labelColor: Theme.of(context).primaryColor,
          labelStyle: TextStyle(
            fontSize: 18.0,
            fontWeight: FontWeight.w600,
          ),
          unselectedLabelStyle: TextStyle(
            fontSize: 18.0,
          ),
          indicatorWeight: 3.0,
          tabs: <Widget>[
            Tab(text: 'Trending'),
            Tab(text: 'Latest'),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          ListView(
            children: <Widget>[
              FollowingUsers(),
              PostsCarousel(
                pageController: _pageController,
                title: 'Posts',
                posts: posts,
              ),
            ],
          ),
          Text('Latest')
        ],
      ),
    );
  }
}
