import 'package:api/api.dart';

extension ProductListExt on List<OrderItem>? {
  String nameAndCount() {
    if (this?.isEmpty ?? true) {
      return '';
    }
    final [OrderItem first, ...rest] = this ?? [];
    if (rest.isEmpty) {
      return first.name ?? '';
    }
    return "${first.name ?? ''} + ${rest.length} more";
  }
}
