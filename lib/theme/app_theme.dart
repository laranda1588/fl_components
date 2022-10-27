

import 'package:flutter/material.dart';

class AppTheme {

  static const Color primary = Colors.green;

  static final ThemeData lightTheme = ThemeData.light().copyWith(
    //====Primary Color
    primaryColor: Colors.green,

    //====AppBar Theme
    appBarTheme: const AppBarTheme(
      color: primary,
      elevation: 0
    ),
    //====TextBottomTheme
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(foregroundColor: primary)
    ),

    //====FloatingActionButtoms
    floatingActionButtonTheme:  const FloatingActionButtonThemeData(
      backgroundColor: primary,
      elevation: 5
    ),
    //====ElevatedButtoms
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.green,
        shape: const StadiumBorder(),
        elevation: 0
      )
    )
  );

  static final ThemeData darkTheme = ThemeData.dark().copyWith(
    //====Primary Color
    primaryColor: Colors.green.shade800,

    //====AppBar Theme
    appBarTheme: const AppBarTheme(
      color: primary,
      elevation: 0
    ),
    //====ScaffoldTheme
    scaffoldBackgroundColor: Colors.black
  );

  



}
