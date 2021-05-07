import 'package:flutter/material.dart';
import 'package:conscience/constants.dart';

class InnerNavigation extends StatelessWidget {
  InnerNavigation({this.isVisible, this.activePage});

  final kActivePage activePage;
  final isVisible;
  @override
  Widget build(BuildContext context) {
    return (isVisible == kHeaderType.withInnerNavigation
        ? Row(
            children: [
              Expanded(
                  child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                      icon: Icon(
                        Icons.people,
                        color: kPrimaryColor,
                      ),
                      onPressed: () {}),
                  Container(
                    height: activePage == kActivePage.firstTabActive ? 2 : 0,
                    color: kPrimaryColor,
                  )
                ],
              )),
              Expanded(
                  child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                      icon: Icon(
                        Icons.leaderboard_outlined,
                        color: kPrimaryColor,
                      ),
                      onPressed: () {}),
                  Container(
                    height: activePage == kActivePage.secondTabActive ? 2 : 0,
                    color: kPrimaryColor,
                  )
                ],
              )),
            ],
          )
        : Container());
  }
}
