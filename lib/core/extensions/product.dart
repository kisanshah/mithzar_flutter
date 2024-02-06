import 'package:api/api.dart';

extension ProductListExt on List<Product>? {
  String nameAndCount() {
    if (this?.isEmpty ?? true) {
      return '';
    }
    final [Product first, ...rest] = this ?? [];
    if (rest.isEmpty) {
      return first.name ?? '';
    }
    return "${first.name ?? ''} + ${rest.length} more";
  }
}
