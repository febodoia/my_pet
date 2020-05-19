import 'package:flutter/material.dart';

class Colors {

  const Colors();


  static const Color appBarTitle = const Color(0xFFFFFFFF);
  static const Color appBarIconColor = const Color(0xFFFFFFFF);
  static const Color appBarDetailBackground = const Color(0x00FFFFFF);
  static const Color appBarGradientStart = const Color(0xFF3383FC);
  static const Color appBarGradientEnd = const Color(0xFF00C6FF);

  //static const Color petCard = const Color(0xFF434273);
  static const Color petCard = const Color(0xFF43C278);
  //static const Color petListBackground = const Color(0xFF3E3963);
  static const Color petPageBackground = const Color(0xFFC6CDC9);
  static const Color petTitle = const Color(0xFFFFFFFF);
  static const Color petLocation = const Color(0x66000000);
  static const Color petDistance = const Color(0x66000000);

}

class Dimens {
  const Dimens();

  static const petWidth = 100.0;
  static const petHeight = 100.0;
}

class TextStyles {

  const TextStyles();

  static const TextStyle appBarTitle = const TextStyle(
    color: Colors.appBarTitle,
    fontFamily: 'Poppins',
    fontWeight: FontWeight.w600,
    fontSize: 36.0
  );

  static const TextStyle petTitle = const TextStyle(
    color: Colors.petTitle,
    fontFamily: 'Poppins',
    fontWeight: FontWeight.w600,
    fontSize: 24.0
  );

  static const TextStyle petLocation = const TextStyle(
    color: Colors.petLocation,
    fontFamily: 'Poppins',
    fontWeight: FontWeight.w300,
    fontSize: 14.0
  );

  static const TextStyle petDistance = const TextStyle(
    color: Colors.petDistance,
    fontFamily: 'Poppins',
    fontWeight: FontWeight.w300,
    fontSize: 12.0
  );


}
