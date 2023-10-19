import 'package:flutter/material.dart';

@immutable
class AppTheme {
  static ThemeData? appTheme = ThemeData(
    // App Bar theme
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.transparent,
      foregroundColor: Colors.black,
      elevation: 0,
      iconTheme: IconThemeData(
        color: Colors.black,
      ),
    ),

    // Icon Theme
    iconButtonTheme: const IconButtonThemeData(
      style: ButtonStyle(
        foregroundColor: MaterialStatePropertyAll(
          Colors.black,
        ),
      ),
    ),
  );

  const AppTheme._();
}
