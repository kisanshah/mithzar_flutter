import 'package:api/api.dart';
import 'package:mithzar/core/extensions/future.dart';
import 'package:mithzar/features/product/data/repository/product_repo_impl.dart';
import 'package:mithzar/features/product/domain/repository/product_repo.dart';
import 'package:mithzar/features/shared/state/user_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'product_detail_provider.g.dart';

@riverpod
class ProductDetailNotifier extends _$ProductDetailNotifier {
  late ProductRepo _repo;

  @override
  State<Product> build(int id) {
    _repo = ref.watch(productRepoProvider);
    return LoadingState();
  }

  Future<void> fetch() async {
    final result = await _repo.getProductById(id);
    state = result.state();
  }
}
