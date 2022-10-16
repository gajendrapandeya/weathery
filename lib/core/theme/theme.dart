import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:weathery/core/constants/color_constants.dart';

class AppTheme {
  AppTheme._();

  static ThemeData dark = ThemeData(
    scaffoldBackgroundColor: ColorConstants.scaffoldBackgroundColor,
    appBarTheme: AppBarTheme(
      backgroundColor: ColorConstants.scaffoldBackgroundColor,
      centerTitle: false,
      elevation: 0,
      titleTextStyle: GoogleFonts.poppins(
        fontSize: 17,
        fontWeight: FontWeight.bold,
        color: ColorConstants.primaryColor,
      ),
      iconTheme: const IconThemeData(
        color: ColorConstants.primaryColor,
      ),
    ),
    colorScheme: ColorScheme.fromSwatch().copyWith(
      secondary: ColorConstants.accentColor,
      primary: ColorConstants.primaryColor,
    ),
  );
}
