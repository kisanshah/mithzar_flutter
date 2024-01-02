import 'package:e_commerce_front_end/features/theme/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore: avoid_classes_with_only_static_members
class AppTheme {
  static final lightTheme = ThemeData(
    scaffoldBackgroundColor: Colors.white,
    appBarTheme: const AppBarTheme(
      systemOverlayStyle: SystemUiOverlayStyle(
        statusBarIconBrightness: Brightness.dark,
        statusBarBrightness: Brightness.light,
      ),
    ),
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
        foregroundColor: AppColor.white,
        shape: LinearBorder.none,
        textStyle: GoogleFonts.poppins(
          fontWeight: FontWeight.w500,
        ),
      ),
    ),
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
        elevation: 0,
        side: const BorderSide(
          color: AppColor.black,
        ),
        foregroundColor: AppColor.black,
        textStyle: GoogleFonts.poppins(
          fontWeight: FontWeight.w500,
          color: AppColor.black,
        ),
        shape: const RoundedRectangleBorder(),
      ),
    ),
  );
}
