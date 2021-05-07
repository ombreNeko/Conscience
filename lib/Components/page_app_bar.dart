import 'package:flutter/material.dart';

class PageAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Size get preferredSize => const Size.fromHeight(60);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text('Conscience'),
      actions: [
        Icon(Icons.notifications),
        SizedBox(width: 20),
        Icon(Icons.search),
        SizedBox(width: 20),
        Icon(Icons.menu),
      ],
      elevation: 10,
    );
  }
}
