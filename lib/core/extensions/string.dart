import 'package:flutter/material.dart';
import 'package:mithzar/src/shared/components/app_snack_bar.dart';
import 'package:mithzar/src/shared/keys/keys.dart';

extension ValidationExtensions on String? {
  bool get isEmail {
    final pattern = RegExp(
      r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+",
    );
    return pattern.hasMatch(this ?? '');
  }

  String get isStrongPasssword {
    final validators = <String, String>{
      '.*[0-9].*': 'Password should contain one digit',
      '(?=.*[a-z])': 'Password should contain at least one lower case',
      '[*@!#%&()^~{}]':
          'Password should contain at least one special characters',
      '.{8,32}': 'Password should contain at least 8 character',
    };

    validators.removeWhere((key, value) => RegExp(key).hasMatch(this ?? ''));
    return validators.entries.map((e) => e.value).join('\n');
  }

  bool get isNullOrEmpty => this == null || this!.isEmpty;
  bool get isNotNullOrEmpty => !isNullOrEmpty;

  Color? hexToColor() {
    if (this == null) {
      return null;
    }
    return Color(
      int.parse(this!.replaceAll('#', ''), radix: 16) + 0xFF000000,
    );
  }

  //title case
  String toTitleCase() {
    if (this == null) {
      return '';
    }
    if (isNotNullOrEmpty) {
      return this![0].toUpperCase() + this!.substring(1).toLowerCase();
    }
    return '';
  }

  void toToast({SnackBarType? type, Duration? duration}) {
    if (this == null) {
      return;
    }
    scaffoldMessengerKey.currentState?.clearSnackBars();
    scaffoldMessengerKey.currentState?.showSnackBar(
      SnackBar(
        elevation: 0,
        duration: duration ?? const Duration(milliseconds: 4000),
        padding: const EdgeInsets.symmetric(horizontal: 20),
        backgroundColor: Colors.transparent,
        content: AppSnackbar(
          text: this!,
          type: type ?? SnackBarType.success,
        ),
      ),
    );
  }
}
