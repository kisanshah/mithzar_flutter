import 'package:api/api.dart';
import 'package:mithzar/core/extensions/future.dart';
import 'package:mithzar/core/instances/api_client_provider.dart';
import 'package:mithzar/data/helper/app_error.dart';
import 'package:mithzar/features/variant/domain/repository/variant_repo.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'variant_repo_impl.g.dart';

@Riverpod(keepAlive: true)
VariantRepo variantRepo(VariantRepoRef ref) {
  return VariantRepoImpl(source: ref.read(apiClientProvider).getVariantApi());
}

class VariantRepoImpl extends VariantRepo {
  VariantRepoImpl({required this.source});

  final VariantApi source;

  @override
  Future<(List<ProductVariant>?, AppError?)> getVaraints(
    PaginationFilter filter,
  ) {
    return source
        .getVariants(page: filter.page ?? 0, size: filter.size ?? 10)
        .toRecord();
  }
}
