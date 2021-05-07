import 'package:flutter/material.dart';
import 'package:conscience/Models/community_list_view.dart';

class CommunityScreenData extends ChangeNotifier {
  List<ListItem> items = [
    ConstantItems(),
  ];

  void addItemToList(ListItem post) {
    items.add(post);
    notifyListeners();
  }

  int get length {
    return items.length;
  }
}
