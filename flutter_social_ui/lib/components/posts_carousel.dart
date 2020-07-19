import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';

import '../models/post_model.dart';

class PostsCarousel extends StatelessWidget {
  final String title;
  final List<Post> posts;
  final PageController pageController;

  const PostsCarousel({
    Key key,
    @required this.title,
    @required this.posts,
    @required this.pageController,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 10.0),
          child: Text(
            title,
            style: TextStyle(
              fontSize: 24.0,
              fontWeight: FontWeight.bold,
              letterSpacing: 1.0,
            ),
          ),
        ),
        Container(
          height: 400.0,
          child: PageView.builder(
            itemBuilder: (context, int index) {
              return _buildPost(context, index);
            },
            controller: pageController,
            itemCount: posts.length,
          ),
        ),
      ],
    );
  }

  _buildPost(BuildContext context, int index) {
    Post post = posts[index];
    return AnimatedBuilder(
      animation: pageController,
      builder: (context, Widget widget) {
        double value = 1;
        if (pageController.position.haveDimensions) {
          value = pageController.page - index;
          value = (1 - (value.abs() * 0.25)).clamp(0.0, 1.0);
        }
        return Center(
          child: SizedBox(
            height: Curves.easeInOut.transform(value) * 400.0,
            child: widget,
          ),
        );
      },
      child: Container(
        margin: EdgeInsets.all(10.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15.0),
          boxShadow: [
            BoxShadow(
              offset: Offset(0, 2),
              color: Colors.black26,
              blurRadius: 6.0,
            ),
          ],
          image: DecorationImage(
            image: AssetImage(post.imageUrl),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: <Widget>[
            Spacer(),
            Container(
              padding: EdgeInsets.all(10.0),
              height: 110.0,
              decoration: BoxDecoration(
                color: Colors.white54,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(15.0),
                  bottomRight: Radius.circular(15.0),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    post.title,
                    style: TextStyle(
                      fontSize: 24.0,
                      fontWeight: FontWeight.bold,
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),
                  SizedBox(height: 6.0),
                  Text(
                    post.location,
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.w600,
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),
                  SizedBox(height: 6.0),
                  Row(
                    children: <Widget>[
                      Icon(
                        Icons.favorite,
                        color: Colors.red,
                      ),
                      SizedBox(width: 6.0),
                      Text(
                        '${post.likes}',
                        style: TextStyle(
                          fontSize: 18.0,
                        ),
                        overflow: TextOverflow.ellipsis,
                      ),
                      Spacer(),
                      Icon(
                        Icons.chat,
                        color: Theme.of(context).primaryColor,
                      ),
                      SizedBox(width: 6.0),
                      Text(
                        '${post.comments}',
                        style: TextStyle(
                          fontSize: 18.0,
                        ),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
