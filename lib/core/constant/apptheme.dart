import 'package:ecomapp/core/constant/color.dart';
import 'package:flutter/material.dart';

ThemeData themeEnglish = ThemeData(
  fontFamily: "PlayfairDisplay",
  textTheme: const TextTheme(
    headlineLarge: TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.bold,
      color: AppColor.black,
    ),
    headlineMedium: TextStyle(
      fontSize: 26,
      fontWeight: FontWeight.bold,
      color: AppColor.black,
    ),
    bodyMedium: TextStyle(
      fontSize: 16,
      height: 2,
      color: AppColor.grey,
      fontWeight: FontWeight.bold,
    ),
  ),
);

ThemeData themeArabic = ThemeData(
  fontFamily: "Cairo",
  textTheme: const TextTheme(
    headlineLarge: TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.bold,
      color: AppColor.black,
    ),
    headlineMedium: TextStyle(
      fontSize: 26,
      fontWeight: FontWeight.bold,
      color: AppColor.black,
    ),
    bodyMedium: TextStyle(
      fontSize: 16,
      height: 2,
      color: AppColor.grey,
      fontWeight: FontWeight.bold,
    ),
  ),
);
