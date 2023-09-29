import 'package:flutter/material.dart';

final lightTheme = ThemeData(
  primarySwatch: Colors.blue,
  hintColor: Colors.orange,
  brightness: Brightness.light,

  // Define the text theme
  textTheme: const TextTheme(
    displayLarge: TextStyle(
      fontSize: 28.0,
      fontWeight: FontWeight.bold,
      color: Colors.black,
    ),
    displayMedium: TextStyle(
      fontSize: 24.0,
      fontWeight: FontWeight.bold,
      color: Colors.black,
    ),
    displaySmall: TextStyle(
      fontSize: 20.0,
      fontWeight: FontWeight.w900,
      color: Colors.black,
    ),
    bodyLarge: TextStyle(
      fontSize: 16.0,
      fontWeight: FontWeight.bold,
      color: Colors.black,
    ),
    bodyMedium: TextStyle(
      fontSize: 14.0,
      color: Colors.black,
    ),
  ),

  // Define the button theme
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      foregroundColor: Colors.white,
      backgroundColor: Colors.black,
      textStyle: const TextStyle(
        fontSize: 16.0,
        fontWeight: FontWeight.bold,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8.0),
      ),
    ),
  ),
);
