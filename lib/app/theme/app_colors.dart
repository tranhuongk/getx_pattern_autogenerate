import 'package:flutter/material.dart';

class AppColors {
  AppColors._();

  static const MaterialColor kPrimaryColor = MaterialColor(
    0xFF003469,
    <int, Color>{
      50: Color(0x24003469),
      100: Color(0xFFBAD1FF),
      200: Color(0xFF8EA6E7),
      300: Color(0xFF647EBB),
      400: Color(0xFF395791),
      500: Color(0xFF003469),
      700: Color(0xFF001D4E),
    },
  );

  static const Color white = Colors.white;
  static const Color black = Colors.black;
  static const Color transparent = Color(0x00000000);
  static const Color green = Color(0xFF43A838);
  static const Color red = Color(0xFFFF3B3B);
  static const Color gray = Color(0xFFAAAAAA);
  static const Color lightGray = Color(0xFF909296);
  static const Color colorDivider = Color(0xFFEBEBEB);
}
