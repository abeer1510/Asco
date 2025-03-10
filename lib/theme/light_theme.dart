import 'dart:ui';

import 'package:asco/theme/base_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/material/theme_data.dart';
import 'package:google_fonts/google_fonts.dart';

class LightTheme extends BaseTheme{
  @override
  Color get backgroundColor => Color(0xffffffff);

  @override
  Color get primaryColor => Color(0xffBC1E1E);

  @override
  Color get textColor => Color(0xff1E232C);

  @override
  ThemeData get themeData => ThemeData(
      primaryColor: primaryColor,
      scaffoldBackgroundColor: backgroundColor,

      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: primaryColor,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white,
        type: BottomNavigationBarType.fixed,
      ),
      floatingActionButtonTheme: FloatingActionButtonThemeData(
          backgroundColor: primaryColor,
          shape: OutlineInputBorder(
              borderRadius: BorderRadius.circular(35),
              borderSide: BorderSide(
                color: Colors.white,
                width: 4,
              )
          )
      ),
      textTheme: TextTheme(
        titleSmall: GoogleFonts.roboto(
          fontSize: 16,
          fontWeight: FontWeight.w500,
          color: textColor,
        ),
        titleMedium: GoogleFonts.roboto(
          fontSize: 20,
          fontWeight: FontWeight.w400,
          color: textColor,
        ),
        titleLarge: GoogleFonts.roboto(
          fontSize:24,
          fontWeight: FontWeight.w700,
          color: textColor,
        ),
      )
  );


}