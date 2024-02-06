import 'package:mithzar/features/orders/ui/providers/past_order_provider.dart';
import 'package:mithzar/features/orders/ui/providers/recent_order_provider.dart';
import 'package:mithzar/features/shared/state/user_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'order_notifier.g.dart';

@Riverpod()
class OrderNotifier extends _$OrderNotifier {
  @override
  State<void> build() {
    return LoadingState();
  }

  Future<void> fetch() async {
    await Future.wait([
      ref.read(recentOrderNotifierProvider.notifier).fetch(),
      ref.read(pastOrderNotifierProvider.notifier).fetch(),
    ]);
    state = ResultState();
  }
}
