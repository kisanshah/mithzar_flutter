import 'package:flutter/material.dart';

class AppTextThemeExtension extends ThemeExtension<AppTextThemeExtension> {
  @override
  ThemeExtension<AppTextThemeExtension> copyWith() => this;

  @override
  ThemeExtension<AppTextThemeExtension> lerp(
    covariant ThemeExtension<AppTextThemeExtension>? other,
    double t,
  ) =>
      this;
}
