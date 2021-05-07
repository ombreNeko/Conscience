import 'package:flutter/material.dart';

const kPaddingLeft = 25.0;

const kTextPrimaryColor = Color(0xff406247);
const kPrimaryColor = Color(0xff6B9685);
const kSecondaryColor = Color(0xffFAF8F0);
const kBodyTextColor = Color(0xff707070);
const kMutedGreyColor = Color(0xffEDEDED);

const kButtonTextStyle = TextStyle(fontSize: 16);

const kHeadingTextStyle = TextStyle(
    fontFamily: 'Arvo',
    fontSize: 24,
    fontWeight: FontWeight.bold,
    color: kTextPrimaryColor);

const kSubHeadingTextStyle = TextStyle(
  color: kTextPrimaryColor,
  fontFamily: 'Arvo',
  fontSize: 20,
);

const kColoredBodyTextStyle = TextStyle(color: kTextPrimaryColor, fontSize: 16);
const kBodyTextStyle = TextStyle(color: kBodyTextColor, fontSize: 16);

const kColoredCaptionTextStyle =
    TextStyle(color: kTextPrimaryColor, fontSize: 14);
const kCaptionTextStyle = TextStyle(fontSize: 14, color: Colors.grey);
const kColoredCaptionTextStyle2 = TextStyle(fontSize: 14, color: kPrimaryColor);

enum kHeaderType {
  withoutInnerNavigation,
  withInnerNavigation,
}

enum kActivePage {
  firstTabActive,
  secondTabActive,
}
