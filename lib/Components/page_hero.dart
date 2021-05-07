import 'package:flutter/material.dart';
import 'package:conscience/constants.dart';
import 'inner_navigation.dart';

class PageHero extends StatelessWidget {
  PageHero({@required this.type, this.activePage = kActivePage.firstTabActive});
  final kHeaderType type;
  final kActivePage activePage;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      color: kSecondaryColor,
      child: Column(
        mainAxisAlignment: type == kHeaderType.withInnerNavigation
            ? MainAxisAlignment.end
            : MainAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.only(bottom: 10),
            child: Text(
              'My State',
              style: kHeadingTextStyle,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.place,
                size: 16,
                color: kPrimaryColor,
              ),
              Text(
                'Delhi',
                style: TextStyle(
                  fontSize: 16,
                  color: kPrimaryColor,
                ),
              ),
            ],
          ),
          InnerNavigation(
            isVisible: type,
            activePage: activePage,
          )
        ],
      ),
    );
  }
}
