import 'package:e_commerce_front_end/features/home/ui/providers/product_list_provider.dart';
import 'package:e_commerce_front_end/features/home/ui/providers/section_provider.dart';
import 'package:e_commerce_front_end/features/shared/state/user_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'home_provider.g.dart';

@riverpod
class HomeNotifier extends _$HomeNotifier {
  @override
  State<void> build() {
    return LoadingState();
  }

  Future<void> fetch() async {
    await Future.wait([
      ref.read(sectionNotifierProvider.notifier).fetch(),
      ref.read(productListProvider.notifier).fetch(),
    ]);
    state = ResultState(data: null);
  }
}
