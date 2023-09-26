import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'colors.dart';

class AppTheme {
  static ThemeData darkTheme = ThemeData(
    scaffoldBackgroundColor: AppColors.c273032,
    appBarTheme: const AppBarTheme(
      elevation: 0,
      backgroundColor: AppColors.c273032,
      systemOverlayStyle: SystemUiOverlayStyle(
        statusBarColor: AppColors.c273032,
        statusBarBrightness: Brightness.light,
        statusBarIconBrightness: Brightness.light,
      ),
    ),
    textTheme: TextTheme(
      //display
      displayLarge: TextStyle(
          color: AppColors.textColor,
          fontSize: 57,
          fontWeight: FontWeight.w800,
          fontFamily: "Poppins"),
      displayMedium: TextStyle(
          color: AppColors.textColor,
          fontSize: 45,
          fontWeight: FontWeight.w700,
          fontFamily: "Poppins"),
      displaySmall: TextStyle(
          color: AppColors.textColor,
          fontSize: 36,
          fontWeight: FontWeight.w600,
          fontFamily: "Poppins"),
      //headline
      headlineLarge: TextStyle(
          color: AppColors.textColor,
          fontSize: 32,
          fontWeight: FontWeight.w700,
          fontFamily: "Poppins"),
      headlineMedium: TextStyle(
          color: AppColors.textColor,
          fontSize: 28,
          fontWeight: FontWeight.w500,
          fontFamily: "Poppins"),
      headlineSmall: TextStyle(
          color: AppColors.textColor,
          fontSize: 24,
          fontWeight: FontWeight.w400,
          fontFamily: "Poppins"),

      //title
      titleLarge: TextStyle(
          color: AppColors.textColor,
          fontSize: 22,
          fontWeight: FontWeight.w700,
          fontFamily: "Poppins"),
      titleMedium: TextStyle(
          color: AppColors.textColor,
          fontSize: 16,
          fontWeight: FontWeight.w600,
          fontFamily: "Poppins"),
      titleSmall: TextStyle(
          color: AppColors.textColor,
          fontSize: 14,
          fontWeight: FontWeight.w500,
          fontFamily: "Poppins"),
      //label
      labelLarge: TextStyle(
          color: AppColors.textColor,
          fontSize: 14,
          fontWeight: FontWeight.w600,
          fontFamily: "Poppins"),
      labelMedium: TextStyle(
          color: AppColors.textColor,
          fontSize: 12,
          fontWeight: FontWeight.w500,
          fontFamily: "Poppins"),
      labelSmall: TextStyle(
          color: AppColors.textColor,
          fontSize: 11,
          fontWeight: FontWeight.w500,
          fontFamily: "Poppins"),
      //body
      bodySmall: TextStyle(
          color: AppColors.passiveTextColor,
          fontSize: 16,
          fontWeight: FontWeight.w500,
          fontFamily: "Poppins"),
      bodyMedium: TextStyle(
          color: AppColors.textColor,
          fontSize: 14,
          fontWeight: FontWeight.w500,
          fontFamily: "Poppins"),
      bodyLarge: TextStyle(
          color: AppColors.textColor,
          fontSize: 12,
          fontWeight: FontWeight.w500,
          fontFamily: "Poppins"),
    ),
  );
  static ThemeData lightTheme = ThemeData();
}