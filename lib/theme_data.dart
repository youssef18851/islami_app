import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyThemeData {
  static Color primaryColor = const Color(0XFFB7935F);
  static Color secondColor = const Color(0XFF242424);
  static Color primaryDarkColor = const Color(0XFFFACC1D);
  static Color secondDarkColor = const Color(0XFF141A2E);

  static ThemeData lightTheme = ThemeData(
      scaffoldBackgroundColor: Colors.transparent,
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
          fontSize: 20,
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
      scaffoldBackgroundColor: Colors.transparent,
      textTheme: TextTheme(
        bodyLarge: GoogleFonts.elMessiri(
          color: secondColor,
          fontSize: 30,
          fontWeight: FontWeight.bold,
        ),
        bodyMedium: GoogleFonts.elMessiri(
          color: primaryDarkColor,
          fontSize: 25,
          fontWeight: FontWeight.w500,
        ),
        bodySmall: GoogleFonts.elMessiri(
          color: const Color(0XFFFFFFFF),
          fontSize: 20,
          fontWeight: FontWeight.w400,
        ),
      ),
      appBarTheme: AppBarTheme(
        iconTheme: IconThemeData(color: secondColor, size: 30),
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
      ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
          selectedItemColor: primaryDarkColor,
          unselectedItemColor: const Color(0XFFFFFFFF),
          type: BottomNavigationBarType.shifting));
}
