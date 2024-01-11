import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

/* Font System */

const FontWeight light = FontWeight.w300;
const FontWeight regular = FontWeight.w400;
const FontWeight medium = FontWeight.w500;
const FontWeight semibold = FontWeight.w600;
const FontWeight bold = FontWeight.w700;

TextStyle displayLarge = GoogleFonts.libreFranklin(
  fontSize: 57,
  height: 64/57,
  letterSpacing: -0.25
);

TextStyle displayMedium = GoogleFonts.libreFranklin(
    fontSize: 45,
    height: 52/45,
);

TextStyle displaySmall = GoogleFonts.libreFranklin(
    fontSize: 36,
    height: 44/36,
);

TextStyle displayBody = GoogleFonts.libreFranklin(
  fontSize: 12,
  height: 16/12,
);

TextStyle displayTitle = GoogleFonts.libreFranklin(
    fontSize: 16,
    height: 24/16,
    letterSpacing: 0.15
);


TextStyle headlineLarge = GoogleFonts.plusJakartaSans(
  fontSize: 32,
  height: 40/32,
);

TextStyle headlineMedium = GoogleFonts.plusJakartaSans(
  fontSize: 28,
  height: 36/28,
);

TextStyle headlineSmall = GoogleFonts.plusJakartaSans(
  fontSize: 24,
  height: 32/24,
);

TextStyle titleLarge = GoogleFonts.plusJakartaSans(
  fontSize: 22,
  height: 28/22,
);

TextStyle titleMedium = GoogleFonts.plusJakartaSans(
  fontSize: 16,
  height: 24/16,
  letterSpacing: 0.15
);

TextStyle titleSmall = GoogleFonts.plusJakartaSans(
  fontSize: 14,
  height: 20/14,
  letterSpacing: 0.1
);

TextStyle bodyLarge = GoogleFonts.plusJakartaSans(
  fontSize: 16,
  height: 24/16
);

TextStyle bodyMedium = GoogleFonts.plusJakartaSans(
    fontSize: 14,
    height: 20/14
);

TextStyle bodySmall = GoogleFonts.plusJakartaSans(
    fontSize: 12,
    height: 16/12
);

TextStyle labelLarge = GoogleFonts.plusJakartaSans(
    fontSize: 16,
    height: 24/16,
    fontWeight: semibold
);

TextStyle labelMedium = GoogleFonts.plusJakartaSans(
    fontSize: 12,
    height: 16/12,
    fontWeight: medium
);

TextStyle labelSmall = GoogleFonts.plusJakartaSans(
    fontSize: 11,
    height: 16/11,
    fontWeight: medium,
    letterSpacing: 0.5
);

TextStyle button = GoogleFonts.roboto(
  fontSize: 14,
  height: 20/14,
  letterSpacing: 0.1
);

/* Color System */

const Color white = Color(0xffffffff);
const Color white1 = Color(0xffFEF7FF);
const Color gray = Color(0xffCAC4D0);
const Color transparent = Colors.transparent;
const Color primary = Color(0xff822F9F);
const Color onPrimary = Color(0xffFCF4FF);
const Color label = Color(0xff1D1B20);