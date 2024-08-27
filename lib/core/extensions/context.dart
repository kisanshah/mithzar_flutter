import 'package:flutter/material.dart';
import 'package:mithzar/src/theme/app_color.dart';
import 'package:mithzar/src/theme/app_text_theme.dart';

extension ContextExt on BuildContext {
  TextTheme get textTheme => Theme.of(this).textTheme;
  BaseColorExtension get colors =>
      Theme.of(this).extension<BaseColorExtension>() ?? AppLightColor();

  AppTextThemeExtension get text =>
      Theme.of(this).extension<AppTextThemeExtension>() ??
      AppTextThemeExtension(context: this);
}
