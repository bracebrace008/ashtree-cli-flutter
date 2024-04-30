import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

enum ThemeType { light, dark }

class Themes {
  static final light = ThemeData.light().copyWith(
    appBarTheme: AppBarTheme(
      toolbarHeight: 56.w,
      centerTitle: true,
      elevation: 0,
    ),
    inputDecorationTheme: const InputDecorationTheme(
      fillColor: Colors.white,
      // fillColor: Color(0xfff6f6f6),
      filled: true,
      // focusColor: Colors.black,
      // hoverColor: Colors.black,
      errorStyle: TextStyle(height: 1),
      helperStyle: TextStyle(height: 1),
      contentPadding: EdgeInsets.only(
        left: 12.0,
        right: 12.0,
        top: 12,
        bottom: 12,
      ),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(5.0),
        ),
        borderSide: BorderSide.none,
      ),
    ),
  );

  static final dark = ThemeData.dark().copyWith(
    colorScheme: const ColorScheme.dark().copyWith(
      background: Colors.blue,
      // surface: const Color(0xFF121212),
    ),
    appBarTheme: AppBarTheme(
      toolbarHeight: 56.w,
      centerTitle: true,
      elevation: 0,
    ),
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      errorStyle: TextStyle(height: 1.w),
      helperStyle: TextStyle(height: 1.w),
      isDense: true,
      constraints: BoxConstraints(
        minHeight: 24.w,
      ),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(8.w),
        ),
        borderSide: BorderSide.none,
      ),
    ),
    textButtonTheme: TextButtonThemeData(
      style: ButtonStyle(
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8.w), // 设置边框半径
          ),
        ),
        padding: MaterialStateProperty.all<EdgeInsets>(EdgeInsets.zero),
      ),
    ),
  );
}
