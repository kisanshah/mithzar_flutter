import 'package:auto_route/auto_route.dart';
import 'package:e_commerce_front_end/features/orders/ui/components/order_item.dart';
import 'package:e_commerce_front_end/features/orders/ui/providers/order_list_notifier.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

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
      ref.read(orderListNotifierProvider.notifier).fetch();
    });
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(orderListNotifierProvider);
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        title: const Text('My Orders'),
      ),
      body: Container(
        margin: const EdgeInsets.all(20),
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
        child: ListView.separated(
          shrinkWrap: true,
          itemBuilder: (context, index) {
            return OrderItem(order: state.data[index]);
          },
          separatorBuilder: (context, index) => const Divider(thickness: 1),
          itemCount: state.data.length,
        ),
      ),
    );
  }
}
