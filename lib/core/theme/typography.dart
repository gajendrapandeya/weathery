import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:weathery/core/constants/color_constants.dart';

class AppTypography {
  AppTypography._();

  static final TextStyle headline1 = GoogleFonts.poppins(
    fontWeight: FontWeight.bold,
    fontSize: 34,
    color: ColorConstants.primaryColor,
  );

  static final TextStyle headline2 = GoogleFonts.poppins(
    fontWeight: FontWeight.bold,
    fontSize: 30,
    color: ColorConstants.primaryColor,
  );

  static final TextStyle headline3 = GoogleFonts.poppins(
    fontWeight: FontWeight.bold,
    fontSize: 26,
    color: ColorConstants.primaryColor,
  );

  static final TextStyle headline4 = GoogleFonts.poppins(
    fontWeight: FontWeight.bold,
    fontSize: 22,
    color: ColorConstants.primaryColor,
  );

  static final TextStyle headline5 = GoogleFonts.poppins(
    fontWeight: FontWeight.bold,
    fontSize: 18,
    color: ColorConstants.primaryColor,
  );

  static final TextStyle headline6 = GoogleFonts.poppins(
    fontWeight: FontWeight.w600,
    fontSize: 16,
    color: ColorConstants.primaryColor,
  );

  static final TextStyle title = GoogleFonts.poppins(
    fontWeight: FontWeight.w600,
    fontSize: 14,
    color: ColorConstants.primaryColor,
  );

  static final TextStyle subTitle = GoogleFonts.poppins(
    fontWeight: FontWeight.w600,
    fontSize: 12,
    color: ColorConstants.primaryColor,
  );

  static final TextStyle description = GoogleFonts.poppins(
    fontWeight: FontWeight.w400,
    fontSize: 14,
    color: ColorConstants.greyShade200,
  );

  static final TextStyle buttonLink = GoogleFonts.poppins(
    fontWeight: FontWeight.w600,
    fontSize: 13,
    color: ColorConstants.primaryColor,
  );

  static final TextStyle textButton = GoogleFonts.poppins(
    fontWeight: FontWeight.w600,
    fontSize: 17,
    color: ColorConstants.primaryColor,
  );

  static final TextStyle caption = GoogleFonts.poppins(
    fontWeight: FontWeight.w400,
    fontSize: 14,
    color: ColorConstants.primaryColor,
  );

  static final TextStyle formText = GoogleFonts.poppins(
    fontWeight: FontWeight.w400,
    fontSize: 17,
    color: ColorConstants.primaryColor,
  );
}
