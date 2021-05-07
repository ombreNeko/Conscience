import 'package:conscience/constants.dart';
import 'package:conscience/screens/create_post_screen.dart';
import 'package:flutter/material.dart';

const horizontalPadding = 20.0;
const verticalPadding = 10.0;

class CreateNewPost extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
        Radius.circular(20),
      )),
      elevation: 2,
      child: Column(
        children: [
          Row(
            children: [
              Padding(
                padding: EdgeInsets.all(8.0),
                child: CircleAvatar(
                  radius: 25,
                  backgroundImage: NetworkImage(
                      'https://i.pinimg.com/originals/f0/a6/4e/f0a64e32194d341befecc80458707565.jpg'),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 10),
                  child: TextField(
                    readOnly: true,
                    decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(50)),
                        borderSide: BorderSide(color: Colors.grey),
                      ),
                      hintText: 'Start typing...',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(50),
                        ),
                      ),
                    ),
                    onTap: () {
                      return Navigator.pushNamed(context, CreatePostScreen.id);
                    },
                  ),
                ),
              )
            ],
          ),
          Container(
            decoration: BoxDecoration(
              color: kSecondaryColor,
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(20),
                bottomLeft: Radius.circular(20),
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
        ],
      ),
    );
  }
}
