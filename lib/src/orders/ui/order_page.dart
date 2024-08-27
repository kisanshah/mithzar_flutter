import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mithzar/core/extensions/async_value.dart';
import 'package:mithzar/src/home/ui/components/home_app_bar.dart';
import 'package:mithzar/src/orders/ui/components/order_list.dart';
import 'package:mithzar/src/orders/ui/providers/order_provider.dart';

@RoutePage()
class OrderPage extends ConsumerStatefulWidget {
  const OrderPage({super.key});

  @override
  ConsumerState<OrderPage> createState() => _OrderPageState();
}

class _OrderPageState extends ConsumerState<OrderPage> {
  @override
  Widget build(BuildContext context) {
    final state = ref.watch(orderListProvider);
    return Scaffold(
      appBar: const HomeAppBar(
        title: 'ORDERS',
      ),
      body: state.unfold(
        (data) {
          final (pending, completed) = data;
          return CustomScrollView(
            slivers: [
              OrderList(
                title: 'Recent Orders 📦',
                orders: pending,
              ),
              OrderList(
                title: 'Past Orders 📦',
                orders: completed,
                viewAll: true,
              ),
            ],
          );
        },
      ),
    );
  }
}
