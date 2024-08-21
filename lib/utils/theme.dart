import 'package:flutter/material.dart';
import 'colors.dart'; // Import the BranaColor class

class AppThemes {
  static final ThemeData lightTheme = ThemeData(
    colorScheme: ColorScheme.light(
      primary: BranaColor.light_background,
      onPrimary: BranaColor.WhiteColor,
      secondary: BranaColor.BookTitleColor,
      onSecondary: BranaColor.WhiteColor,
      background: BranaColor.light_background,
      onBackground: BranaColor.BookTitleColor,
      surface: BranaColor.WhiteColor,
      onSurface: BranaColor.ClickedBookColor,
      shadow: BranaColor.ShadowColor,
      error: BranaColor.BadgeBackground,
      onError: BranaColor.BadgeLabelColor,
    ),
    scaffoldBackgroundColor: BranaColor.light_background,
    appBarTheme: AppBarTheme(
      color: BranaColor.navigationColor,
      iconTheme: IconThemeData(color: BranaColor.WhiteColor),
    ),
    textTheme: TextTheme(
      bodyLarge: TextStyle(color: BranaColor.BookTitleColor),
      bodyMedium: TextStyle(color: BranaColor.ClickedBookColor),
      displayLarge: TextStyle(color: BranaColor.BookTitleColor),
      displayMedium: TextStyle(color: BranaColor.BookTitleColor),
      displaySmall: TextStyle(color: BranaColor.BookTitleColor),
      headlineMedium: TextStyle(color: BranaColor.BookTitleColor),
      headlineSmall: TextStyle(color: BranaColor.BookTitleColor),
      titleLarge: TextStyle(color: BranaColor.BookTitleColor),
      titleMedium: TextStyle(color: BranaColor.ClickedBookColor),
      titleSmall: TextStyle(color: BranaColor.ClickedBookColor),
      bodySmall: TextStyle(color: BranaColor.ClickedBookColor),
      labelLarge: TextStyle(color: BranaColor.WhiteColor),
      labelSmall: TextStyle(color: BranaColor.ClickedBookColor),
    ),
    dividerColor: BranaColor.DividerColor,
    buttonTheme: ButtonThemeData(
      buttonColor: BranaColor.StarColor,
      textTheme: ButtonTextTheme.primary,
    ),
  );

  static final ThemeData darkTheme = ThemeData(
    colorScheme: ColorScheme.dark(
      primary: BranaColor.dark_background,
      onPrimary: BranaColor.WhiteColor,
      secondary: BranaColor.BookTitleColor,
      onSecondary: BranaColor.WhiteColor,
      background: BranaColor.dark_background,
      onBackground: BranaColor.WhiteColor,
      surface: BranaColor.navigationColor,
      onSurface: BranaColor.ClickedBookColor,
      shadow: BranaColor.ShadowColor,
      error: BranaColor.BadgeBackground,
      onError: BranaColor.BadgeLabelColor,
    ),
    scaffoldBackgroundColor: BranaColor.dark_background,
    appBarTheme: AppBarTheme(
      color: BranaColor.navigationColor,
      iconTheme: IconThemeData(color: BranaColor.WhiteColor),
    ),
    textTheme: TextTheme(
      bodyLarge: TextStyle(color: BranaColor.WhiteColor),
      bodyMedium: TextStyle(color: BranaColor.ClickedBookColor),
      displayLarge: TextStyle(color: BranaColor.WhiteColor),
      displayMedium: TextStyle(color: BranaColor.WhiteColor),
      displaySmall: TextStyle(color: BranaColor.WhiteColor),
      headlineMedium: TextStyle(color: BranaColor.WhiteColor),
      headlineSmall: TextStyle(color: BranaColor.WhiteColor),
      titleLarge: TextStyle(color: BranaColor.WhiteColor),
      titleMedium: TextStyle(color: BranaColor.ClickedBookColor),
      titleSmall: TextStyle(color: BranaColor.ClickedBookColor),
      bodySmall: TextStyle(color: BranaColor.ClickedBookColor),
      labelLarge: TextStyle(color: BranaColor.WhiteColor),
      labelSmall: TextStyle(color: BranaColor.ClickedBookColor),
    ),
    dividerColor: BranaColor.DividerColor,
    buttonTheme: ButtonThemeData(
      buttonColor: BranaColor.StarColor,
      textTheme: ButtonTextTheme.primary,
    ),
  );
}