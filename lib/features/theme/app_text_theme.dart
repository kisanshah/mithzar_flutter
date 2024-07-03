import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mithzar/core/extensions/context.dart';

class AppTextThemeExtension extends ThemeExtension<AppTextThemeExtension> {
  AppTextThemeExtension({required this.context}) {
    semibold24 = GoogleFonts.poppins(
      color: context.colors.primaryText,
      fontSize: 24,
      fontWeight: FontWeight.w600,
    );
    regular12 = GoogleFonts.poppins(
      color: context.colors.primaryText,
      fontSize: 12,
      fontWeight: FontWeight.w500,
    );
    regular14 = GoogleFonts.poppins(
      color: context.colors.primaryText,
      fontSize: 14,
    );
    regular16 = GoogleFonts.poppins(
      color: context.colors.primaryText,
      fontSize: 16,
    );
    regular18 = GoogleFonts.poppins(
      color: context.colors.primaryText,
      fontSize: 18,
    );
    semibold14 = GoogleFonts.poppins(
      color: context.colors.primaryText,
      fontSize: 14,
      fontWeight: FontWeight.w500,
    );
    semibold16 = GoogleFonts.poppins(
      color: context.colors.primaryText,
      fontSize: 16,
      fontWeight: FontWeight.w500,
    );
  }

  final BuildContext context;
  late TextStyle semibold24;
  late TextStyle regular12;
  late TextStyle regular14;
  late TextStyle regular16;
  late TextStyle regular18;
  late TextStyle semibold14;
  late TextStyle semibold16;

  @override
  ThemeExtension<AppTextThemeExtension> copyWith() => this;

  @override
  ThemeExtension<AppTextThemeExtension> lerp(
    covariant ThemeExtension<AppTextThemeExtension>? other,
    double t,
  ) =>
      this;
}
