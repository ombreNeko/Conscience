import 'package:conscience/Components/user_post.dart';
import 'package:flutter/material.dart';
import 'package:conscience/constants.dart';
import 'package:conscience/Components/create_new_post.dart';
import 'package:conscience/Components/square_image_label_card.dart';
import 'package:conscience/Components/page_hero.dart';
import 'package:conscience/Models/post_content.dart';

abstract class ListItem {
  Widget buildItem(BuildContext context);
}

class ConstantItems implements ListItem {
  Widget buildItem(BuildContext context) {
    return Column(
      children: [
        PageHero(
          type: kHeaderType.withInnerNavigation,
        ),
        Padding(
          padding: EdgeInsets.only(left: 25, right: 25, top: 20, bottom: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Share Your Green Ideas',
                        style: kSubHeadingTextStyle,
                      ),
                      Text(
                        'Want to engage or perhaps spread more awareness?',
                        style: kCaptionTextStyle,
                      )
                    ],
                  ),
                  SizedBox(height: 10),
                  CreateNewPost(),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Today\'s Super Heroes',
                    style: kSubHeadingTextStyle,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                    height: 200,
                    child: ListView.separated(
                      separatorBuilder: (BuildContext context, int index) =>
                          SizedBox(
                        width: 10,
                      ),
                      itemCount: 3,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) => SquareImageLabelCard(),
                    ),
                  ), //horizontal scroll view
                ],
              ),
            ],
          ),
        )
      ],
    );
  }
}

class UserPostItems implements ListItem {
  UserPost userPost;
  UserPostItems({this.userPost});
  Widget buildItem(BuildContext context) {
    print(userPost);
    return Padding(
      padding: EdgeInsets.only(left: 25, right: 25, bottom: 10),
      child: userPost,
      // userPostList[index],
    );
  }
}
