import 'package:flutter/material.dart';

class ColorsTheme {

  const ColorsTheme();


  static const Color appBarTitle = const Color(0xFFFFFFFF);
  static const Color appBarIconColor = const Color(0xFFFFFFFF);
  static const Color appBarDetailBackground = const Color(0x00FFFFFF);
  static const Color appBarGradientStart = const Color(0xFF3383FC);
  static const Color appBarGradientEnd = const Color(0xFF00C6FF);

  //static const Color petCard = const Color(0xFF434273);
  static const Color petCard = const Color(0xFF43C278);
  //static const Color petListBackground = const Color(0xFF3E3963);
  static const Color petPageBackground = const Color(0xFFf7f7f7);
  static const Color petTitle = const Color(0xFFFFFFFF);
  static const Color petLocation = const Color(0x66000000);
  static const Color petDistance = const Color(0x66000000);
  static const Color corPadrao = const Color(0xFF48B174);

}

class Dimens {
  const Dimens();

  static const petWidth = 100.0;
  static const petHeight = 100.0;
}

class TextStyles {

  const TextStyles();

  static const TextStyle appBarTitle = const TextStyle(
    color: ColorsTheme.appBarTitle,
    fontFamily: 'Poppins',
    fontWeight: FontWeight.w600,
    fontSize: 36.0
  );

  static const TextStyle petTitle = const TextStyle(
    color: ColorsTheme.petTitle,
    fontFamily: 'Poppins',
    fontWeight: FontWeight.w600,
    fontSize: 24.0
  );

  static const TextStyle petLocation = const TextStyle(
    color: ColorsTheme.petLocation,
    fontFamily: 'Poppins',
    fontWeight: FontWeight.w300,
    fontSize: 14.0
  );

  static const TextStyle petDistance = const TextStyle(
    color: ColorsTheme.petDistance,
    fontFamily: 'Poppins',
    fontWeight: FontWeight.w300,
    fontSize: 12.0
  );



}

extension ColorExtension on String {
  toColor() {
    var hexColor = this.replaceAll("#", "");
    if (hexColor.length == 6) {
      hexColor = "FF" + hexColor;
    }
    if (hexColor.length == 8) {
      return Color(int.parse("0x$hexColor"));
    }
  }
}
