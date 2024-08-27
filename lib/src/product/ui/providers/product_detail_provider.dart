// ignore_for_file: use_setters_to_change_properties

import 'package:api/api.dart';
import 'package:mithzar/src/product/data/repository/product_repo_impl.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'product_detail_provider.g.dart';

@riverpod
Future<Product> product(ProductRef ref, int id) {
  return ref.watch(productRepoProvider).getProductById(id);
}

@Riverpod(keepAlive: true)
class VarinatId extends _$VarinatId {
  @override
  int? build() {
    return null;
  }

  void update(int? id) {
    state = id;
  }
}

@Riverpod(keepAlive: true)
class SkuId extends _$SkuId {
  @override
  int? build() {
    return null;
  }

  void update(int? id) {
    state = id;
  }
}

@riverpod
Future<ProductVariant> variant(VariantRef ref, int id) {
  return ref.watch(productRepoProvider).getVariantByid(id);
}

@Riverpod()
Future<({Product product, ProductVariant variant})> productDetail(
  ProductDetailRef ref,
  int productId,
) async {
  final product = await ref.watch(productProvider(productId).future);
  final variantId = ref.watch(varinatIdProvider) ?? product.variants!.first.id!;
  final variant = await ref.watch(variantProvider(variantId).future);
  return (product: product, variant: variant);
}
