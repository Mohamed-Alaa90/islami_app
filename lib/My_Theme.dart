import 'package:flutter/material.dart';

class MyTheme {
  static const Color lightPrimary = Color(0xffB7935F);
  static const Color darkPrimary = Color(0xff141A2E);

  static final ThemeData lightTheme = ThemeData(
    primaryColor: lightPrimary,
    scaffoldBackgroundColor: Colors.transparent,
    dividerTheme:
        const DividerThemeData(thickness: 1.5, color: Color(0xffB7935F)),
    appBarTheme: const AppBarTheme(

      backgroundColor: Colors.transparent,
      elevation: 0,
      centerTitle: true,
      titleTextStyle: TextStyle(
          fontSize: 30, fontWeight: FontWeight.bold, color: Colors.black),
    ),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      backgroundColor: lightPrimary,
      selectedItemColor: Colors.black,
      selectedIconTheme: IconThemeData(
        color: Colors.black,
      ),
      unselectedItemColor: Colors.white,
      showSelectedLabels: true,
      showUnselectedLabels: false,
      type: BottomNavigationBarType.fixed,
    ),
    textTheme: const TextTheme(
      titleMedium: TextStyle(
        fontSize: 25,
        fontWeight: FontWeight.bold,
        fontFamily: 'DTHULUTH',
      ),
    ),
  );
}
