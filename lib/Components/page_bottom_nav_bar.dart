import 'package:conscience/constants.dart';
import 'package:flutter/material.dart';

class PageBottomNavBar extends StatefulWidget {
  @override
  _PageBottomNavBarState createState() => _PageBottomNavBarState();
}

class _PageBottomNavBarState extends State<PageBottomNavBar> {
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      selectedItemColor: kSecondaryColor,
      unselectedItemColor: Color(0xffC1D3CC),
      backgroundColor: kPrimaryColor,
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(icon: Icon(Icons.home), label: 'My State'),
        BottomNavigationBarItem(icon: Icon(Icons.park), label: 'Challenges'),
        BottomNavigationBarItem(
            icon: Icon(Icons.trending_up), label: 'Dashboard'),
        BottomNavigationBarItem(
            icon: CircleAvatar(
              radius: 13,
              backgroundImage: NetworkImage(
                  'https://i.pinimg.com/originals/f0/a6/4e/f0a64e32194d341befecc80458707565.jpg'),
            ),
            label: 'Profile'),
      ],
      currentIndex: _selectedIndex,
    );
  }
}
