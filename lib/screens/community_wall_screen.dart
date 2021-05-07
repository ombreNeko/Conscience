import 'package:flutter/material.dart';
import 'package:conscience/Components/page_app_bar.dart';
import 'package:conscience/Models/community_list_view.dart';
import 'package:conscience/Components/page_bottom_nav_bar.dart';
import 'package:conscience/Helpers/community_screen_data.dart';
import 'package:provider/provider.dart';

class CommunityWallScreen extends StatelessWidget {
  static final id = 'communityWallScreen';

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
