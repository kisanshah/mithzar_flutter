import 'package:mithzar/features/home/ui/providers/section_provider.dart';
import 'package:mithzar/features/home/ui/providers/variant_list_provider.dart';
import 'package:mithzar/features/shared/state/user_state.dart';
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
      ref.read(variantListProvider.notifier).fetch(),
    ]);
    state = ResultState();
  }
}
