import 'package:flutter/material.dart';
import 'package:music_app/core/configs/theme/app_colors.dart';

class AppTheme {
  static final lightTheme = ThemeData(
    primaryColor: AppColor.primaryColor,
    brightness: Brightness.light,
    fontFamily: 'Satoshi',
    scaffoldBackgroundColor: AppColor.lightBackground,
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColor.primaryColor,
        textStyle: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold, ),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
      ),
    ),
  );

    static final darkTheme = ThemeData(
    primaryColor: AppColor.primaryColor,
    brightness: Brightness.dark,
     fontFamily: 'Satoshi',
    scaffoldBackgroundColor: AppColor.darkBackground,
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColor.primaryColor,
        textStyle: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
      ),
    ),
  );
}
