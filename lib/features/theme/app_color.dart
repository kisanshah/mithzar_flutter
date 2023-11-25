import 'package:flutter/material.dart';

class AppColor {
  static const Color grey = Color(0xFFe1e1e1);
  static const Color green = Color(0xFF20bf6b);
  static const Color red = Color(0xFFe74c3c);
  static const Color lightBlue = Color(0xFFe3f2fb);
  static const Color lightPink = Color(0xFFfee1e6);

  //accent color to material color
  // #6c5ce7
  static const Color accentColor = Color(0xFF6c5ce7);
  //accent color map
  static const Map<int, Color> accentColorMap = {
    50: Color.fromRGBO(108, 92, 231, .1),
    100: Color.fromRGBO(108, 92, 231, .2),
    200: Color.fromRGBO(108, 92, 231, .3),
    300: Color.fromRGBO(108, 92, 231, .4),
    400: Color.fromRGBO(108, 92, 231, .5),
    500: Color.fromRGBO(108, 92, 231, .6),
    600: Color.fromRGBO(108, 92, 231, .7),
    700: Color.fromRGBO(108, 92, 231, .8),
    800: Color.fromRGBO(108, 92, 231, .9),
    900: Color.fromRGBO(108, 92, 231, 1),
  };

  static const MaterialColor accentMaterialColor =
      MaterialColor(0xFF6c5ce7, accentColorMap);

  static const black = Color(0xFF2d3436);
  static const white = Color(0xFFffffff);
}
