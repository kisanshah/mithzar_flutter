import 'package:api/api.dart';

abstract class VariantRepo {
  Future<List<ProductVariant>> getVaraints(
    PaginationFilter filter,
  );
}
