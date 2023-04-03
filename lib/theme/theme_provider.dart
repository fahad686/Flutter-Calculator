import 'package:flutter/material.dart';

class MyThemes {
  // for Light Theme
  static final lightTheme = ThemeData(
      scaffoldBackgroundColor: Colors.white,
      colorScheme: const ColorScheme.light());
  // for Dark Theme
  static final darkTheme = ThemeData(
      scaffoldBackgroundColor: Colors.black12,
      colorScheme: const ColorScheme.dark());
}
