import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'app_color.dart';

class AppTheme {
  static final lightTheme = ThemeData(
    primarySwatch: AppColor.accentMaterialColor,
    textTheme: GoogleFonts.poppinsTextTheme(),
    buttonTheme: const ButtonThemeData(
      buttonColor: AppColor.accentColor,
      shape: RoundedRectangleBorder(
        side: BorderSide(color: AppColor.accentColor),
        borderRadius: BorderRadius.all(
          Radius.circular(10),
        ),
      ),
      textTheme: ButtonTextTheme.primary,
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        elevation: 0,
        backgroundColor: AppColor.accentColor,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),
        ),
      ),
    ),
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
        elevation: 0,
        side: const BorderSide(
          width: 1.5,
          color: AppColor.accentColor,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    ),
  );
}
