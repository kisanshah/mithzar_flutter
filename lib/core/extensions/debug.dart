import 'package:flutter/foundation.dart';

extension StringDebugExtension on String {
  String get ifDebug => kDebugMode ? this : '';
}
