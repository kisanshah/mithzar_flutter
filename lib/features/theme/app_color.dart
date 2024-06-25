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
  });

  final Color primary;
  final Color secondary;
  final Color primaryText;
  final Color secondaryText;
  final Color yellow;
  final Color green;
  final Color red;

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
          primary: const Color(0xFF3544cf),
          secondary: const Color(0xFF6774eb),
          primaryText: const Color(0xFF49494a),
          secondaryText: const Color(0xFFaeb0b7),
          yellow: const Color(0xFFfbc470),
          green: const Color(0xFF35cfb5),
          red: const Color(0xFFcf434e),
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
        );
}
