import 'package:conscience/Components/page_bottom_nav_bar.dart';
import 'package:conscience/Helpers/community_screen_data.dart';
import 'package:conscience/Models/community_list_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:conscience/constants.dart';
import 'package:conscience/Components/page_app_bar.dart';
import 'package:conscience/Models/post_content.dart';
import 'package:conscience/Components/user_post.dart';
import 'package:provider/provider.dart';

class CreatePostScreen extends StatelessWidget {
  static final id = 'createPostScreen';
  String userText;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PageAppBar(),
        bottomNavigationBar: PageBottomNavBar(),
        body: Padding(
          padding: EdgeInsets.only(left: 25, right: 25, top: 20, bottom: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CircleAvatar(
                        radius: 23,
                        backgroundImage: NetworkImage(
                            'https://i.pinimg.com/originals/f0/a6/4e/f0a64e32194d341befecc80458707565.jpg'),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Column(
                        children: [
                          Text(
                            'User Name',
                            style: kColoredCaptionTextStyle,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            'User Score',
                            style: kCaptionTextStyle,
                          ),
                        ],
                      ),
                    ],
                  ),
                  Text(
                    'State',
                    style: kColoredCaptionTextStyle,
                  )
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                  ),
                  child: Column(
                    children: [
                      Expanded(
                        child: Container(
                          padding: EdgeInsets.symmetric(horizontal: 10),
                          child: TextField(
                            onChanged: (text) {
                              userText = text;
                            },
                            autofocus: true,
                            keyboardType: TextInputType.multiline,
                            maxLines: 100,
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'What\'s on your mind?',
                            ),
                          ),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: kSecondaryColor,
                          borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(10),
                            bottomLeft: Radius.circular(10),
                          ),
                        ),
                        child: Container(
                          decoration: BoxDecoration(
                            border: Border(
                              top: BorderSide(
                                color: Colors.grey,
                                width: 1.0,
                              ),
                            ),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Expanded(
                                child: TextButton.icon(
                                    label: Text(
                                      'Photo',
                                      style: TextStyle(
                                        color: kPrimaryColor,
                                      ),
                                    ),
                                    icon: Icon(
                                      Icons.add_a_photo,
                                      color: kPrimaryColor,
                                      size: 25,
                                    ),
                                    onPressed: () {
                                      print('Pressed');
                                    }),
                              ),
                              Expanded(
                                child: TextButton.icon(
                                    label: Text(
                                      'Video',
                                      style: TextStyle(
                                        color: kPrimaryColor,
                                      ),
                                    ),
                                    icon: Icon(
                                      Icons.video_call,
                                      color: kPrimaryColor,
                                      size: 30,
                                    ),
                                    onPressed: () {
                                      print('Pressed');
                                    }),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: () {
                  Provider.of<CommunityScreenData>(context, listen: false)
                      .addItemToList(
                    UserPostItems(
                      userPost: UserPost(
                        postContent: PostContent(
                          userName: 'Surmai',
                          userScore: 100,
                          postBody: userText,
                          dateTime: DateTime.now(),
                        ),
                      ),
                    ),
                  );
                  print(userText);
                  Navigator.pop(context);
                },
                child: Text('Post'),
                style: ElevatedButton.styleFrom(
                  primary: kPrimaryColor,
                  onPrimary: Colors.white,
                  padding: EdgeInsets.all(20),
                  textStyle: kButtonTextStyle,
                ),
              ),
            ],
          ),
        ));
  }
}
