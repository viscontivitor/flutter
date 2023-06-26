import 'package:flutter/material.dart';

ThemeData MyTheme = ThemeData(
  brightness: Brightness.dark,
  textTheme: const TextTheme(
    bodyMedium: TextStyle(
      fontSize: 16,
    ),
    bodyLarge: TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.bold,
      fontStyle: FontStyle.italic,
    ),
    titleMedium: TextStyle(
      fontSize: 26,
      fontWeight: FontWeight.normal,
    ),
  ),
);
