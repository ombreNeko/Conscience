import 'package:conscience/Models/post_content.dart';
import 'package:conscience/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class UserPost extends StatelessWidget {
  final PostContent postContent;
  UserPost({this.postContent});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(10),
        ),
      ),
      elevation: 2,
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(left: 8.0, right: 8, bottom: 8, top: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CircleAvatar(
                          radius: 25,
                          backgroundImage: NetworkImage(
                              'https://i.pinimg.com/originals/f0/a6/4e/f0a64e32194d341befecc80458707565.jpg'),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Column(
                          children: [
                            Text(
                              postContent.userName,
                              style: kColoredCaptionTextStyle,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              postContent.userScore.toString(),
                              style: kCaptionTextStyle,
                            ),
                          ],
                        ),
                      ],
                    ),
                    Text(
                      postContent.dateTime.toString(),
                      style: kColoredCaptionTextStyle,
                    )
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  postContent.postBody,
                  style: kBodyTextStyle,
                ),
                SizedBox(
                  height: 10,
                ),
                SizedBox(
                  height: 100,
                  child: ListView.separated(
                      separatorBuilder: (BuildContext context, int index) =>
                          SizedBox(
                            width: 10,
                          ),
                      scrollDirection: Axis.horizontal,
                      itemCount: 5,
                      itemBuilder: (context, index) {
                        return (ClipRRect(
                              borderRadius: BorderRadius.all(
                                Radius.circular(20),
                              ),
                              child: Image.network(
                                'https://i.pinimg.com/564x/f2/be/61/f2be6105ab6a189cc8e12b396759e27d.jpg',
                                fit: BoxFit.cover,
                              ),
                            )) ??
                            Container();
                      }),
                ), //listview
              ],
            ),
          ),
          Container(
            decoration: BoxDecoration(
              color: kMutedGreyColor,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(10),
                bottomRight: Radius.circular(10),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton.icon(
                  onPressed: () {},
                  icon: Icon(
                    Icons.favorite,
                    color: kPrimaryColor,
                  ),
                  label: Text(
                    '2',
                    style: kColoredCaptionTextStyle2,
                  ),
                ),
                TextButton.icon(
                  onPressed: () {},
                  icon: Icon(
                    Icons.comment,
                    color: kPrimaryColor,
                  ),
                  label: Text(
                    '4',
                    style: kColoredCaptionTextStyle2,
                  ),
                ),
                TextButton.icon(
                  onPressed: () {},
                  icon: Icon(
                    Icons.share,
                    color: kPrimaryColor,
                  ),
                  label: Text(
                    '28',
                    style: kColoredCaptionTextStyle2,
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
