import 'package:flutter/material.dart';

class ThemeColors {
  static const MaterialColor primarycolor = Colors.orange;
  static const List<Color> headerColor = [
    Color.fromRGBO(255, 138, 0, 1.0),
    Color.fromRGBO(75, 89, 191, 1.0),
    Color.fromRGBO(103, 99, 234, 1.0),
  ];
  static const recentActivity = {
    'dotlar': Color.fromRGBO(255, 138, 0, 1.0),
    'dotazul': Color.fromRGBO(40, 218, 242, 1.0),
  };
  static const division = Color.fromRGBO(166, 166, 166, 1.0);
  static const AccountPoints = {
    'delivery': Color.fromRGBO(255, 138, 10, 1.0),
    'streaming': Color.fromRGBO(40, 218, 142, 1.0),
  };
}

ThemeData MyTheme = ThemeData(
  primarySwatch: ThemeColors.primarycolor,
  primaryColor: ThemeColors.primarycolor,
  brightness: Brightness.dark,
  textTheme: const TextTheme(
    bodyMedium: TextStyle(
      fontSize: 16,
    ),
    bodyLarge: TextStyle(
      fontSize: 28,
      fontWeight: FontWeight.bold,
    ),
    titleMedium: TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.normal,
    ),
  ),
);
