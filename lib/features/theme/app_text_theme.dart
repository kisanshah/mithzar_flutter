import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mithzar/core/extensions/context.dart';

class AppTextThemeExtension extends ThemeExtension<AppTextThemeExtension> {
  AppTextThemeExtension({required this.context}) {
    title = GoogleFonts.poppins(
      color: context.colors.primaryText,
      fontSize: 24,
      fontWeight: FontWeight.w600,
    );
    subTitle = GoogleFonts.poppins(
      color: context.colors.secondaryText,
      fontSize: 16,
    );
    label = GoogleFonts.poppins(
      color: context.colors.primaryText,
      fontSize: 14,
    );
    button = GoogleFonts.poppins(
      color: context.colors.primaryText,
      fontSize: 14,
     fontWeight: FontWeight.w500,
    );
  }

  final BuildContext context;
  late TextStyle title;
  late TextStyle subTitle;
  late TextStyle label;
  late TextStyle button;

  @override
  ThemeExtension<AppTextThemeExtension> copyWith() => this;

  @override
  ThemeExtension<AppTextThemeExtension> lerp(
    covariant ThemeExtension<AppTextThemeExtension>? other,
    double t,
  ) =>
      this;
}
