import 'package:intl/intl.dart';

extension DatetimeExt on DateTime? {
  String format() {
    if (this == null) {
      return '';
    }
    final pattern = DateFormat('DD MMM y | hh:mm a');
    return pattern.format(this!);
  }
}
