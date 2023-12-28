import 'package:intl/intl.dart';

extension CurrencyExtension on num? {
  String toRupee() {
    if (this == null) {
      return '';
    }
    final format = NumberFormat.currency(
      name: 'INR',
      locale: 'en_IN',
      decimalDigits: 0,
      symbol: '₹ ',
    );
    return format.format(this);
  }
}
