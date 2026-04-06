import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyThemeData {
  static const Color primary = Color(0xFFB7935F);
  static const Color blackColor = Color(0xFF242424);
  static const Color whiteColor = Color(0xFFFFFFFF);
  static const Color yellowColor = Color(0xFFFACC1D);

  /// 🌞 Light Theme
  static ThemeData lightTheme = ThemeData(
    scaffoldBackgroundColor: Colors.transparent,
    appBarTheme: AppBarTheme(
      iconTheme: IconThemeData(color: primary),
      centerTitle: true,
      elevation: 0,
      backgroundColor: Colors.transparent,
    ),
    textTheme: TextTheme(
      bodyLarge: GoogleFonts.elMessiri(
        fontSize: 30,
        color: blackColor,
        fontWeight: FontWeight.bold,
      ),
      bodyMedium: GoogleFonts.elMessiri(
        fontSize: 25,
        color: blackColor,
        fontWeight: FontWeight.w700,
      ),
      bodySmall: GoogleFonts.elMessiri(
        fontSize: 20,
        color: whiteColor,
        fontWeight: FontWeight.w100,
      ),
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      type: BottomNavigationBarType.shifting,
      backgroundColor: primary,
      selectedItemColor: blackColor,
      unselectedItemColor: whiteColor,
    ),
  );

  /// 🌙 Dark Theme (🔥 ده المهم)
  static ThemeData darkTheme = ThemeData(
    scaffoldBackgroundColor: Colors.transparent,
    appBarTheme: AppBarTheme(
      iconTheme: IconThemeData(color: yellowColor),
      centerTitle: true,
      elevation: 0,
      backgroundColor: Colors.transparent,
    ),
    textTheme: TextTheme(
      bodyLarge: GoogleFonts.elMessiri(
        fontSize: 30,
        color: yellowColor,
        fontWeight: FontWeight.bold,
      ),
      bodyMedium: GoogleFonts.elMessiri(
        fontSize: 25,
        color: yellowColor,
        fontWeight: FontWeight.w700,
      ),
      bodySmall: GoogleFonts.elMessiri(
        fontSize: 20,
        color: whiteColor,
        fontWeight: FontWeight.w100,
      ),
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      type: BottomNavigationBarType.shifting,
      backgroundColor: primary,
      selectedItemColor: yellowColor,
      unselectedItemColor: whiteColor,
    ),
  );
}