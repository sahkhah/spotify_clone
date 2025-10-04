import 'package:flutter/material.dart';
import 'package:music_app/core/configs/theme/app_colors.dart';

class AppTheme {
  static final lightTheme = ThemeData(
    primaryColor: AppColor.primaryColor,
    brightness: Brightness.light,
    fontFamily: 'Satoshi',
    scaffoldBackgroundColor: AppColor.lightBackground,
     inputDecorationTheme: InputDecorationTheme(
      contentPadding: EdgeInsets.all(15),
      filled: true,
      fillColor: Colors.transparent,
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(30),
        borderSide: BorderSide(color: Colors.black, width: 0.4),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(30),
        borderSide: BorderSide(color: Colors.black, width: 0.4),
      ),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColor.primaryColor,
        textStyle: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold, ),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      ),
    ),
  );

    static final darkTheme = ThemeData(
    primaryColor: AppColor.primaryColor,
    brightness: Brightness.dark,
     fontFamily: 'Satoshi',
    scaffoldBackgroundColor: AppColor.darkBackground,
    inputDecorationTheme: InputDecorationTheme(
        contentPadding: EdgeInsets.all(15),
        filled: true,
        fillColor: Colors.transparent,
        border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(30),
        borderSide: BorderSide(color: Colors.white, width: 0.4),
      ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
          borderSide: BorderSide(
            color: Colors.white, width: 0.4,),
        )
      ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColor.primaryColor,
        textStyle: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      ),
    ),
  );
}
