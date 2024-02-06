import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mithzar/features/home/ui/components/home_app_bar.dart';
import 'package:mithzar/features/orders/ui/components/order_list.dart';
import 'package:mithzar/features/orders/ui/providers/order_notifier.dart';
import 'package:mithzar/features/orders/ui/providers/past_order_provider.dart';
import 'package:mithzar/features/orders/ui/providers/recent_order_provider.dart';
import 'package:mithzar/features/shared/state/user_state.dart';

@RoutePage()
class OrderPage extends ConsumerStatefulWidget {
  const OrderPage({super.key});

  @override
  ConsumerState<OrderPage> createState() => _OrderPageState();
}

class _OrderPageState extends ConsumerState<OrderPage> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      ref.read(orderNotifierProvider.notifier).fetch();
    });
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(orderNotifierProvider);

    return Scaffold(
      appBar: const HomeAppBar(
        title: 'ORDERS',
      ),
      body: state.unfold(
        (data) => CustomScrollView(
          slivers: [
            OrderList(
              title: 'Recent Orders 📦',
              provider: recentOrderNotifierProvider,
            ),
            OrderList(
              title: 'Past Orders 📦',
              provider: pastOrderNotifierProvider,
              viewAll: true,
            ),
          ],
        ),
      ),
    );
  }
}
