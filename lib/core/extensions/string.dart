import 'dart:ui';

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
        int.parse(this!, radix: 16) + 0xFF000000,);
  }
}
