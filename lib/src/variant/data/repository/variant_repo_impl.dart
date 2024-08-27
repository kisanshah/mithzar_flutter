import 'package:api/api.dart';
import 'package:mithzar/core/instances/api_client_provider.dart';
import 'package:mithzar/src/variant/domain/repository/variant_repo.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'variant_repo_impl.g.dart';

@Riverpod(keepAlive: true)
VariantRepo variantRepo(VariantRepoRef ref) {
  return VariantRepoImpl(source: ref.read(apiClientProvider).getProductApi());
}

class VariantRepoImpl extends VariantRepo {
  VariantRepoImpl({required this.source});

  final ProductApi source;

  @override
  Future<List<ProductVariant>> getVaraints(
    PaginationFilter filter,
  ) {
    // FIXME(Kisan): create variant list api
    // return source
    //     .getVariants(page: filter.page ?? 0, size: filter.size ?? 10)
    //     .toRecord();
    return Future.value(<ProductVariant>[]);
  }
}
