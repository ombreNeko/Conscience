import 'package:flutter/material.dart';

class PostContent {
  final String userName;
  final int userScore;
  final DateTime dateTime;
  final String postBody;
  int numLikes;
  int numComment;
  int numShares;

  PostContent({this.userName, this.userScore, this.dateTime, this.postBody});
}
