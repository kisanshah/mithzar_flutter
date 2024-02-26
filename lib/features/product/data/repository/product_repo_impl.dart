import 'package:api/api.dart';
import 'package:mithzar/core/extensions/future.dart';
import 'package:mithzar/core/instances/api_client_provider.dart';
import 'package:mithzar/data/helper/app_error.dart';
import 'package:mithzar/features/product/domain/repository/product_repo.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'product_repo_impl.g.dart';

@Riverpod(keepAlive: true)
ProductRepo productRepo(ProductRepoRef ref) {
  return ProductRepoImpl(source: ref.read(apiClientProvider).getProductApi());
}

class ProductRepoImpl implements ProductRepo {
  ProductRepoImpl({required this.source});

  final ProductApi source;
  @override
  Future<Product> getProductById(int id) {
    return source.getProductById(id: id).guard();
  }

  @override
  Future<(List<ProductVariant>?, AppError?)> getVariants(
    PaginationFilter? filter,
  ) {
    return source
        .getVariants(paginationFilter: filter ?? PaginationFilter())
        .toRecord();
  }

  @override
  Future<ProductVariant> getVariantByid(int id) async {
    return source.getVariantById(id: id).guard();
  }
}
