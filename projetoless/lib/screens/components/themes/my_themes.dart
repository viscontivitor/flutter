import 'package:flutter/material.dart';
import 'package:projetoless/screens/components/themes/theme_colors.dart';

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
