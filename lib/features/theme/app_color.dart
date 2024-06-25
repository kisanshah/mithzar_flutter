import 'package:flutter/material.dart';

class BaseColorExtension extends ThemeExtension<BaseColorExtension> {
  BaseColorExtension({
    required this.primary,
    required this.secondary,
    required this.primaryText,
    required this.secondaryText,
    required this.yellow,
    required this.green,
    required this.red,
    required this.background,
    required this.inputBackground,
    required this.border,
  });

  final Color primary;
  final Color secondary;
  final Color primaryText;
  final Color secondaryText;
  final Color yellow;
  final Color green;
  final Color red;
  final Color border;
  final Color background;
  final Color inputBackground;

  @override
  ThemeExtension<BaseColorExtension> copyWith() => this;

  @override
  ThemeExtension<BaseColorExtension> lerp(
    covariant ThemeExtension<BaseColorExtension>? other,
    double t,
  ) =>
      this;
}

class AppLightColor extends BaseColorExtension {
  AppLightColor()
      : super(
          primary: const Color(0xFF1e272e),
          secondary: const Color(0xFF6774eb),
          primaryText: const Color(0xFF0C1421),
          secondaryText: const Color(0xFF313957),
          yellow: const Color(0xFFfbc470),
          green: const Color(0xFF35cfb5),
          red: const Color(0xFFcf434e),
          background: Colors.white,
          inputBackground: const Color(0xFFF3F7FB),
          border: const Color(0xFFD4D7E3),
        );
}

class AppDarkColor extends BaseColorExtension {
  AppDarkColor()
      : super(
          primary: const Color(0xFF3544cf),
          secondary: const Color(0xFF6774eb),
          primaryText: const Color(0xFF49494a),
          secondaryText: const Color(0xFFaeb0b7),
          yellow: const Color(0xFFfbc470),
          green: const Color(0xFF35cfb5),
          red: const Color(0xFFcf434e),
          background: Colors.white,
          inputBackground: const Color(0xFFF3F7FB),
          border: const Color(0xFFD4D7E3),
        );
}
