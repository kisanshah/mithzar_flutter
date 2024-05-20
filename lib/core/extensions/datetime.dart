import 'package:intl/intl.dart';

extension DatetimeExt on DateTime? {
  String format() {
    if (this == null) {
      return '';
    }
    final pattern = DateFormat('d MMM y | hh:mm a');
    return pattern.format(this!);
  }
}
