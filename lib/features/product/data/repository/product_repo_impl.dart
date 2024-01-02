import 'package:api/api.dart';
import 'package:e_commerce_front_end/core/extensions/future.dart';
import 'package:e_commerce_front_end/core/instances/api_client_provider.dart';
import 'package:e_commerce_front_end/data/helper/app_error.dart';
import 'package:e_commerce_front_end/features/product/domain/repository/product_repo.dart';
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
  Future<(Product?, AppError?)> getProductById(int id) {
    return source.getProductById(id: id).toRecord<Product>();
  }

  @override
  Future<(List<Product>?, AppError?)> getFilteredList(PaginationFilter filter) {
    return source.getFiltered(filter: filter).toRecord();
  }
}
