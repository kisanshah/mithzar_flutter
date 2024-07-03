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
    final textTheme = AppTextThemeExtension(context: context);
    return ThemeData(
      extensions: [colors, textTheme],
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
          textStyle: textTheme.semibold14,
          padding: const EdgeInsets.all(10),
          foregroundColor: colors.primary,
          side: BorderSide(color: colors.primary),
        ),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          elevation: 0,
          textStyle: textTheme.semibold14,
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
      scaffoldBackgroundColor: colors.background,
      radioTheme: RadioThemeData(
        fillColor: WidgetStatePropertyAll(colors.primary),
        visualDensity: const VisualDensity(horizontal: -4),
        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
      ),
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: colors.inputBackground,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5),
          borderSide: BorderSide(color: colors.border),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5),
          borderSide: BorderSide(color: colors.border),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5),
          borderSide: BorderSide(color: colors.border),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.red.shade900, width: 0.75),
        ),
        contentPadding: const EdgeInsets.all(12),
        isDense: true,
      ),
    );
  }
}
