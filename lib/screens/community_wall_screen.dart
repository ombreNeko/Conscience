import 'package:flutter/material.dart';
import 'package:conscience/Components/page_app_bar.dart';
import 'package:conscience/Models/community_list_view.dart';
import 'package:conscience/Components/page_bottom_nav_bar.dart';
import 'package:conscience/Helpers/community_screen_data.dart';
import 'package:provider/provider.dart';
import 'package:firebase_auth/firebase_auth.dart';

class CommunityWallScreen extends StatefulWidget {
  static final id = 'communityWallScreen';

  @override
  _CommunityWallScreenState createState() => _CommunityWallScreenState();
}

class _CommunityWallScreenState extends State<CommunityWallScreen> {
  final _auth = FirebaseAuth.instance;
  User loggedInUser;

  @override
  void initState() {
    super.initState();
    getCurrentUser();
  }

  void getCurrentUser() {
    final user = _auth.currentUser;
    if (user != null) {
      loggedInUser = user;
      print(loggedInUser.email);
    }
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PageAppBar(),
      body: ListView.builder(
        itemCount: Provider.of<CommunityScreenData>(context).length,
        itemBuilder: (context, index) {
          final item = Provider.of<CommunityScreenData>(context).items[index];
          return item.buildItem(context);
        },
      ),
      bottomNavigationBar: PageBottomNavBar(),
    );
  }
}
