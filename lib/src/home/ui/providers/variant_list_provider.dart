import 'package:api/api.dart';
import 'package:mithzar/src/product/data/repository/product_repo_impl.dart';
import 'package:mithzar/src/shared/state/pagination_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'variant_list_provider.g.dart';

@Riverpod(dependencies: [productRepo], keepAlive: true)
class VariantList extends _$VariantList {

  @override
  PaginationState<List<ProductVariant>> build() {
    return PaginationLoading(
      filter: PaginationFilter(),
    );
  }

  Future<void> fetch() async {
    // final products = await _repo.getVariants(state.filter);
    // state = products.pagination(state);
  }

  void next(int index) {
    const threshold = 1;
    final load = (state.items?.length ?? 0) - index == threshold && state.more;
    if (load) {
      fetch();
    }
  }

  void applyFilter(PaginationFilter filter) {
    state = PaginationLoading(
      // FIXME(Kisan): fix copyWith
      filter: filter,
      // .copyWith(
      //   page: 0,
      //   size: 10,
      // ),
    );
    fetch();
  }
}
