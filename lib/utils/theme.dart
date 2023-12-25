import 'package:flutter/material.dart';
import 'package:sports_event_app/utils/colors.dart';
import 'package:sports_event_app/utils/constants.dart';

/// The theme of the app.
class SportsEventAppTheme {
  /// themeData of the app.
  static ThemeData themeData = ThemeData(
    primaryColor: tColorLightBlue,
    colorScheme: const ColorScheme.light(
      error: tColorRed,
      onBackground: tColorLightBlue,
      secondary: tColorGrey,
      onSurface: tColorLightBlue,
    ),
    appBarTheme: const AppBarTheme(
      backgroundColor: tColorDarkBlue,
      elevation: 0,
      centerTitle: true,
    ),
    scaffoldBackgroundColor: tColorWhite,
    fontFamily: tTextFontFamilyRegular,
    textTheme: const TextTheme(
      titleSmall: TextStyle(
        color: tColorFontTitleDarkGrey,
        fontSize: tFontSizeSmall,
        fontWeight: FontWeight.w400,
        height: tFontHeight,
      ),
      headlineLarge: TextStyle(
        color: tColorBlack,
        fontSize: tFontSizeLarge,
        fontWeight: FontWeight.w400,
        height: tFontHeight,
      ),
      headlineMedium: TextStyle(
        color: tColorBlack,
        fontSize: tFontSizeMedium,
        fontWeight: FontWeight.w700,
        height: tFontHeight,
      ),
      headlineSmall: TextStyle(
        color: tColorBlack,
        fontSize: tFontSizeSmall,
        fontWeight: FontWeight.w700,
        height: tFontHeight,
      ),
      bodySmall: TextStyle(
        color: tColorFontGrey,
        fontSize: tFontSizeSmall,
        fontWeight: FontWeight.w400,
        height: tFontHeight,
      ),
      bodyLarge: TextStyle(
        color: tColorFontDarkGrey,
        fontSize: tFontSizeLarge,
        fontWeight: FontWeight.w400,
        height: tFontHeight,
      ),
    ),
  );
}
