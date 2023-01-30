import 'package:flutter/material.dart';

class MyThemeData {
  static ThemeData lightTheme = ThemeData();
  static ThemeData darkTheme = ThemeData(
    primaryColor: Colors.black,
    scaffoldBackgroundColor: Colors.black,
    textTheme: TextTheme(
      headline1: TextStyle(
        fontSize: 25,
        fontWeight: FontWeight.bold,
        color: Colors.white,
      ),
      subtitle1: TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.bold,
        color: Colors.white,
      ),
      subtitle2: TextStyle(
        fontSize: 12,
        fontWeight: FontWeight.w500,
        color: Colors.white,
      ),
    ),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      elevation: 0,
      selectedLabelStyle: TextStyle(color: Colors.yellow, fontSize: 22),
      selectedIconTheme: IconThemeData(size: 30, color: Colors.yellow),
      unselectedIconTheme: IconThemeData(
        size: 28,
        color: Colors.white,
      ),
    ),
  );
}
