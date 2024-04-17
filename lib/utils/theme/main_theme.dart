import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../constants/color/color_const.dart';

class MainTheme {
  static ThemeData light = ThemeData(
    // ? FontFamily

    fontFamily: GoogleFonts.poppins().fontFamily,

    // ? Elevated Buttons Style

    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        elevation: 0,
        textStyle: TextStyle(
          fontSize: 15,
          fontWeight: FontWeight.w600,
          color: AppColor.white,
        ),
      ),
    ),
// ? FloatingAction Button style
    floatingActionButtonTheme: FloatingActionButtonThemeData(
      elevation: 0,
      backgroundColor: AppColor.blue,
      extendedTextStyle: TextStyle(
        fontSize: 15,
        fontWeight: FontWeight.w600,
        color: AppColor.white,
      ),
    ),
    // ? Appbars Style

    appBarTheme: AppBarTheme(
      foregroundColor: AppColor.black,
      backgroundColor: AppColor.white,
      elevation: 2,
      titleTextStyle: TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.w600,
        color: AppColor.black,
      ),
    ),

    // ? Scaffold background Color

    scaffoldBackgroundColor: AppColor.kPrimaryColor,

    // ? Floating action Buttons styles

    bottomNavigationBarTheme:  BottomNavigationBarThemeData(
      selectedItemColor: AppColor.blue,
      unselectedItemColor: AppColor.grey,
      showSelectedLabels: true,
      showUnselectedLabels: true,
    ),
  );
}
