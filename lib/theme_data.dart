import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyThemeData {
  static Color primaryColor = const Color(0XFFB7935F);
  static Color secondColor = const Color(0XFF242424);
  static Color primaryDarkColor = const Color(0XFF0F1424);
  static Color secondDarkColor = const Color(0XFFFACC1D);
  static Color thirdDarkColor = const Color(0XFFF8F8F8);

  static ThemeData lightTheme = ThemeData(
      colorScheme: ColorScheme(
          brightness: Brightness.light,
          primary: primaryColor,
          onPrimary: Colors.white,
          secondary: Colors.black,
          onSecondary: primaryColor,
          error: Colors.red,
          onError: Colors.white,
          background: primaryColor,
          onBackground: Colors.black,
          surface: Colors.white,
          onSurface: Colors.black),
      scaffoldBackgroundColor: Colors.transparent,
      dividerColor: primaryColor,
      textTheme: TextTheme(
        bodyLarge: GoogleFonts.elMessiri(
          color: secondColor,
          fontSize: 30,
          fontWeight: FontWeight.bold,
        ),
        bodyMedium: GoogleFonts.elMessiri(
          color: primaryColor,
          fontSize: 25,
          fontWeight: FontWeight.w500,
        ),
        bodySmall: TextStyle(
          fontFamily: 'DecoType',
          color: secondColor,
          fontSize: 25,
          fontWeight: FontWeight.w400,
        ),
      ),
      appBarTheme: const AppBarTheme(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
      ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
          selectedItemColor: secondColor,
          unselectedItemColor: const Color(0XFFFFFFFF),
          type: BottomNavigationBarType.shifting));
  static ThemeData darkTheme = ThemeData(
      colorScheme: ColorScheme(
          brightness: Brightness.light,
          primary: primaryDarkColor,
          onPrimary: Colors.black,
          secondary: Colors.white,
          onSecondary: Colors.white,
          error: Colors.red,
          onError: Colors.white,
          background: secondDarkColor,
          onBackground: Colors.white,
          surface: primaryDarkColor,
          onSurface: secondDarkColor),
      iconTheme: const IconThemeData(color: Colors.white, size: 30),
      scaffoldBackgroundColor: Colors.transparent,
      dividerColor: secondDarkColor,
      textTheme: TextTheme(
        bodyLarge: GoogleFonts.elMessiri(
          color: Colors.white,
          fontSize: 30,
          fontWeight: FontWeight.bold,
        ),
        bodyMedium: GoogleFonts.elMessiri(
          color: thirdDarkColor,
          fontSize: 25,
          fontWeight: FontWeight.w500,
        ),
        bodySmall: TextStyle(
          fontFamily: 'DecoType',
          color: secondDarkColor,
          fontSize: 25,
          fontWeight: FontWeight.w500,
        ),
      ),
      appBarTheme: AppBarTheme(
        iconTheme: IconThemeData(color: secondColor, size: 30),
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
      ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
          selectedItemColor: secondDarkColor,
          unselectedItemColor: const Color(0XFFFFFFFF),
          type: BottomNavigationBarType.shifting));
}
