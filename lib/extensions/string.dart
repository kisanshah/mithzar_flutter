extension ValidationExtensions on String? {
  bool get isEmail {
    final pattern = RegExp(
      r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+",
    );
    return pattern.hasMatch(this ?? '');
  }

  String get isStrongPasssword {
    final validators = <RegExp, String>{};
    validators[RegExp('.*[0-9].*')] = 'Password should contain one digit';
    validators[RegExp('(?=.*[a-z])')] =
        'Password should contain at least one lower case';
    validators[RegExp('[*@!#%&()^~{}]')] =
        'Password should contain at least one special characters';
    validators[RegExp('.{8,32}')] =
        'Password should contain at least 8 character';

    validators.removeWhere((key, value) => key.hasMatch(this ?? ''));
    return validators.entries.map((e) => e.value).join('\n');
  }

  bool get isNullOrEmpty => this == null || this!.isEmpty;
  bool get isNotNullOrEmpty => !isNullOrEmpty;
}
