import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const colorBlue = Color(0xFF304ffe);
const colorGreen = Color(0xFF4ffe30);

TextTheme defaultText = TextTheme(
  headline1: GoogleFonts.nunito(fontWeight: FontWeight.w600, fontSize: 30),
  headline2: GoogleFonts.nunito(fontWeight: FontWeight.bold, fontSize: 15),
  headline3: GoogleFonts.nunito(
      fontWeight: FontWeight.bold,
      fontSize: 15,
      textStyle: TextStyle(color: Colors.grey[700])),
  headline4: GoogleFonts.nunito(fontWeight: FontWeight.w600, fontSize: 25),
  bodyText1: GoogleFonts.nunito(fontSize: 12, fontWeight: FontWeight.w600),
  bodyText2: GoogleFonts.nunito(
    fontSize: 14,
    fontWeight: FontWeight.w400,
  ),
);

TextTheme defaultText2 = TextTheme(
  headline1: GoogleFonts.nunito(fontWeight: FontWeight.w700, fontSize: 30),
  headline2: GoogleFonts.nunito(fontWeight: FontWeight.bold, fontSize: 15),
  headline3: GoogleFonts.nunito(
      fontWeight: FontWeight.bold,
      fontSize: 15,
      textStyle: TextStyle(color: Colors.grey[700])),
  headline4: GoogleFonts.nunito(fontWeight: FontWeight.w600, fontSize: 25),
  bodyText1: GoogleFonts.nunito(fontSize: 12, fontWeight: FontWeight.w600),
  bodyText2: GoogleFonts.nunito(
    fontSize: 14,
    fontWeight: FontWeight.w400,
  ),
);
