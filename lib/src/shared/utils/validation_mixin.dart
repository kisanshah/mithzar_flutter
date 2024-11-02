
import 'package:mithzar/core/extensions/string.dart';

mixin ValidationMixin {
  final emailRegEx = RegExp(
    r'^(?!.*\.\.@)[a-zA-Z0-9._%+-]+(?<!\.)@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$',
  );
  final phoneRegEx = RegExp(r'^[0-9]{10}$');
  final phoneWithCountryCodeRegEx = RegExp(r'^\+?\d{10,15}$');
  final passwordRegEx = RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9]).{8,}$');
  final gstRegEx =
      RegExp(r'^([0-9]{2}[A-Z]{5}[0-9]{4}[A-Z]{1}[1-9A-Z]{1}Z[0-9A-Z]{1})?$');
  final panRegEx = RegExp(r'^([A-Z]{5}[0-9]{4}[A-Z]{1})?$');

  String? requiredField(String? value, {String? label}) {
    if (value.isNullOrEmpty) {
      return '${label ?? 'Field'} is required';
    }
    return null;
  }

  String? validatePhone(String? value) {
    if (value.isNullOrEmpty) {
      return 'Phone is required';
    }
    if (!phoneRegEx.hasMatch(value!)) {
      return 'Please enter valid phone number';
    }
    return null;
  }

  String? validatePhoneCountry(String? value) {
    if (value.isNullOrEmpty) {
      return 'Phone is required';
    }
    if (!phoneWithCountryCodeRegEx.hasMatch(value!)) {
      return 'Please enter valid phone number';
    }
    return null;
  }

  String? validatePAN(String? value) {
    if (value.isNullOrEmpty) {
      return 'PAN number is required';
    }
    if (!panRegEx.hasMatch(value!)) {
      return 'Please enter valid PAN number';
    }
    return null;
  }

  String? validateGST(String? value) {
    if (value.isNullOrEmpty) {
      return 'GST number is required';
    }
    if (!gstRegEx.hasMatch(value!)) {
      return 'Please enter valid GST number';
    }
    return null;
  }

  String? validateEmail(String? value) {
    if (value.isNullOrEmpty) {
      return 'Email address is required';
    }
    if (!emailRegEx.hasMatch(value!)) {
      return 'Please enter valid email address';
    }
    return null;
  }

  String? validatePassword(String? value) {
    if (value.isNullOrEmpty) {
      return 'Password is required';
    }
    if (!passwordRegEx.hasMatch(value!)) {
      // return 'Please enter strong password';
    }
    return null;
  }

  String? matchPassword(String? value, String password) {
    if (value.isNullOrEmpty) {
      return 'Password is required';
    }
    if (password != value) {
      return "Please doesn't match";
    }
    return null;
  }
}
