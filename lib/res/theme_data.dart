import 'package:flutter/material.dart';
import 'dart:ui';

import 'package:happy_trip/res/colors.dart';

class AppTheme {
  static const String fontName = "WorkSans";

  static const TextStyle caption = TextStyle(
    // Caption -> caption
    fontFamily: fontName,
    fontWeight: FontWeight.w300,
    fontSize: 15,
    letterSpacing: 0.2,
    //color: AppColors.blurGrey,
  );
  static const TextStyle subtitle1 = TextStyle(
    // Caption -> caption
    fontFamily: fontName,
    fontWeight: FontWeight.w400,
    fontSize: 17,
    letterSpacing: 0.1,
  );
  static const TextStyle subtitle2 = TextStyle(
    // Caption -> caption
    fontFamily: fontName,
    fontWeight: FontWeight.w500,
    fontSize: 14,
    letterSpacing: 0.1,
  );
  static const TextStyle headline5 = TextStyle(
    // Caption -> caption
    fontFamily: fontName,
    fontWeight: FontWeight.w500,
    fontSize: 21,
    letterSpacing: 0,
  );

  static const TextStyle bodyText2 = TextStyle(
    // Caption -> caption
    fontFamily: fontName,
    fontWeight: FontWeight.w500,
    fontSize: 16,
    letterSpacing: 0,
  );
  static const TextTheme textTheme = TextTheme(
    headline5: headline5,
    subtitle1: subtitle1,
    subtitle2: subtitle2,
    bodyText2: bodyText2,
    caption: caption,
  );

  static ThemeData themeData(BuildContext context) {
    return ThemeData(
        fontFamily: fontName,
        primaryColor: AppColors.deepPink,
        accentColor: AppColors.nearlyPink1,
        brightness: Brightness.light,
        backgroundColor: Colors.white,
        scaffoldBackgroundColor: Colors.white,
        textTheme: textTheme);
  }
}
