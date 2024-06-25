import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mithzar/features/theme/app_color.dart';
import 'package:mithzar/features/theme/app_text_theme.dart';

class AppTheme {
  AppTheme(this.context);

  final BuildContext context;

  ThemeData get light => _base(AppLightColor());

  ThemeData get dark => _base(AppDarkColor());

  ThemeData _base(BaseColorExtension colors) {
    return ThemeData(
      extensions: [colors, AppTextThemeExtension()],
      useMaterial3: false,
      textTheme: GoogleFonts.poppinsTextTheme(),
      appBarTheme: AppBarTheme(
        elevation: 0,
        backgroundColor: colors.primary,
      ),
      primaryColor: colors.primary,
      colorScheme: ColorScheme.fromSeed(seedColor: colors.primary),
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          elevation: 0,
          padding: const EdgeInsets.all(10),
          foregroundColor: colors.primary,
          side: BorderSide(color: colors.primary),
        ),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          elevation: 0,
          padding: const EdgeInsets.all(10),
          backgroundColor: colors.primary,
        ),
      ),
      textSelectionTheme: TextSelectionThemeData(
        cursorColor: colors.primary,
      ),
      checkboxTheme: CheckboxThemeData(
        fillColor: WidgetStateProperty.resolveWith((states) {
          if (states.contains(WidgetState.selected)) {
            return colors.primary;
          }
          return Colors.transparent;
        }),
        visualDensity: const VisualDensity(horizontal: -4, vertical: -4),
        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
      ),
      scaffoldBackgroundColor: Colors.white,
      radioTheme: RadioThemeData(
        fillColor: WidgetStatePropertyAll(colors.primary),
        visualDensity: const VisualDensity(horizontal: -4),
        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
      ),
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5),
          borderSide: BorderSide.none,
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5),
          borderSide: BorderSide.none,
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.red.shade900),
        ),
        contentPadding: const EdgeInsets.all(12),
        isDense: true,
      ),
    );
  }
}
