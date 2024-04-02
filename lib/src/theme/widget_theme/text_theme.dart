import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../constants/colors.dart';

class AppTextTheme {
  static TextTheme lightTextTheme = TextTheme(

      headline1: GoogleFonts.montserrat(color: AppDarkColor,fontSize: 30,fontWeight: FontWeight.bold),
      headline2: GoogleFonts.montserrat(color: AppDarkColor,fontSize: 26,fontWeight: FontWeight.w700),
      headline3: GoogleFonts.poppins(color: AppDarkColor,fontSize: 24,fontWeight: FontWeight.w700),
      headline4: GoogleFonts.poppins(color: AppDarkColor,fontSize: 18,fontWeight: FontWeight.w600),
      headline5: GoogleFonts.poppins(color: AppDarkColor,fontSize: 14,fontWeight: FontWeight.w600),
      headline6: GoogleFonts.poppins(color: AppDarkColor,fontSize: 12,fontWeight: FontWeight.w500),
      subtitle1: GoogleFonts.montserrat(color: AppDarkColor,fontSize: 16,fontWeight: FontWeight.w500),
      subtitle2: GoogleFonts.montserrat(color: AppDarkColor,fontSize: 14,fontWeight: FontWeight.w400),
      bodyText1: GoogleFonts.macondo(color: AppDarkColor,fontSize: 12,fontWeight: FontWeight.w400),
      bodyText2: GoogleFonts.macondo(color: AppDarkColor,fontSize: 11,fontWeight: FontWeight.w400),
  );

  static TextTheme darkTextTheme = TextTheme(


      headline1: GoogleFonts.montserrat(color: AppWhiteColor,fontSize: 30,fontWeight: FontWeight.bold),
      headline2: GoogleFonts.montserrat(color: AppWhiteColor,fontSize: 26,fontWeight: FontWeight.w700),
      headline3: GoogleFonts.poppins(color: AppWhiteColor,fontSize: 24,fontWeight: FontWeight.w700),
      headline4: GoogleFonts.poppins(color: AppWhiteColor,fontSize: 18,fontWeight: FontWeight.w600),
      headline5: GoogleFonts.poppins(color: AppWhiteColor,fontSize: 14,fontWeight: FontWeight.w600),
      headline6: GoogleFonts.poppins(color: AppWhiteColor,fontSize: 12,fontWeight: FontWeight.w500),
      subtitle1: GoogleFonts.montserrat(color: AppWhiteColor,fontSize: 16,fontWeight: FontWeight.w700),
      subtitle2: GoogleFonts.montserrat(color: AppWhiteColor,fontSize: 14,fontWeight: FontWeight.w600),
      bodyText1: GoogleFonts.macondo(color: AppWhiteColor,fontSize: 12,fontWeight: FontWeight.w500),
      bodyText2: GoogleFonts.macondo(color: AppWhiteColor,fontSize: 11,fontWeight: FontWeight.normal),

  );
}
