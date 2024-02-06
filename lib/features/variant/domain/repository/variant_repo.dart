import 'package:api/api.dart';
import 'package:mithzar/data/helper/app_error.dart';

abstract class VariantRepo {
  Future<(List<ProductVariant>?, AppError?)> getVaraints(
    PaginationFilter filter,
  );
}
