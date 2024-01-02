import 'package:api/api.dart';
import 'package:e_commerce_front_end/core/extensions/future.dart';
import 'package:e_commerce_front_end/features/product/data/repository/product_repo_impl.dart';
import 'package:e_commerce_front_end/features/product/domain/repository/product_repo.dart';
import 'package:e_commerce_front_end/features/shared/state/pagination_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'product_list_provider.g.dart';

@Riverpod(dependencies: [productRepo], keepAlive: true)
class ProductList extends _$ProductList {
  late ProductRepo _repo;

  @override
  PaginationState<List<Product>> build() {
    _repo = ref.watch(productRepoProvider);
    return PaginationLoading(
      filter: const PaginationFilter(
        page: 0,
        size: 10,
      ),
    );
  }

  Future<void> fetch() async {
    final products = await _repo.getFilteredList(state.filter);
    state = products.pagination(state);
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
      filter: filter.copyWith(
        page: 0,
        size: 10,
      ),
    );
    fetch();
  }
}
