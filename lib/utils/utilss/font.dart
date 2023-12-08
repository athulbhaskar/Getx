import 'dart:math';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

/// FontWeight w100 = Thin, the least thick
/// FontWeight w200 = Extra-light
/// FontWeight w300 =  Light
/// FontWeight w400 = Normal / regular / plain
/// FontWeight w500 =  Medium
/// FontWeight w600 = Semi-bold
/// FontWeight w700 = Bold
/// FontWeight w800 =  Extra-bold

class FontStyles {
  TextStyle font(double size, fontWeight, color) {
    TextStyle greyTextButtonTextStyle = GoogleFonts.sourceSans3(
      color: color,
      fontSize: size,
      fontWeight: fontWeight,
    );
    return greyTextButtonTextStyle;
  }

  TextStyle loraFont(double size, fontWeight, color) {
    TextStyle loraTextStyle = GoogleFonts.lora(
      color: color,
      fontSize: size,
      fontWeight: fontWeight,
    );
    return loraTextStyle;
  }

  TextStyle interFont(double size, fontWeight, color) {
    TextStyle greyTextButtonTextStyle = GoogleFonts.inter(
      color: color,
      fontSize: size,
      fontWeight: fontWeight,
    );
    return greyTextButtonTextStyle;
  }

  TextStyle interFontUnderlined(double size, fontWeight, color) {
    TextStyle greyTextButtonTextStyle = GoogleFonts.inter(
      color: color,
      fontSize: size,
      fontWeight: fontWeight,
      decoration: TextDecoration.underline,
    );
    return greyTextButtonTextStyle;
  }
}

//For Making Text responsive in mobile and ipad
//use textScaleFactor: ScaleSize.textScaleFactor(Get.context!), property in Text widget
class ScaleSize {
  static double textScaleFactor(BuildContext context,
      {double maxTextScaleFactor = 2}) {
    final width = MediaQuery.of(context).size.width;
    double val = (width / 1400) * maxTextScaleFactor;
    return max(1, min(val, maxTextScaleFactor));
  }
}
