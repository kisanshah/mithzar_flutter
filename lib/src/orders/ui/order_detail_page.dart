import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mithzar/core/extensions/async_value.dart';
import 'package:mithzar/core/extensions/num.dart';
import 'package:mithzar/src/orders/ui/components/tracking_item.dart';
import 'package:mithzar/src/orders/ui/providers/order_detail_provider.dart';
import 'package:mithzar/src/shared/providers/user_provider.dart';

@RoutePage()
class OrderDetailPage extends HookConsumerWidget {
  const OrderDetailPage({
    super.key,
    required this.id,
  });
  final int id;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(orderDetailProvider(id));
    final notifier = ref.read(orderDetailProvider(id).notifier);
    final name =
        ref.read(userNotifierProvider).name?.split(' ').firstOrNull ?? '';
    return state.unfold(
      (order) => Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          leading: GestureDetector(
            onTap: context.maybePop,
            child: const Icon(
              Icons.arrow_back,
            ),
          ),
          actions: [
            PopupMenuButton(
              padding: EdgeInsets.zero,
              elevation: 0,
              itemBuilder: (context) {
                return [
                  const PopupMenuItem(
                    child: Text('Support'),
                  ),
                  const PopupMenuItem(
                    child: Text(
                      'Cancel',
                    ),
                  ),
                ];
              },
            ),
            const Gap(10),
          ],
          centerTitle: true,
          title: const Text(
            'ORDER',
            textAlign: TextAlign.center,
          ),
        ),
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            children: [
              Expanded(
                child: OutlinedButton(
                  onPressed: () => notifier.downloadInvoice(),
                  child: const Text(
                    'Download Invoice',
                    style: TextStyle(),
                  ),
                ),
              ),
              const Gap(10),
              Expanded(
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black,
                  ),
                  child: const Text(
                    'Re Order',
                  ),
                ),
              ),
            ],
          ),
        ),
        body: ListView(
          padding: const EdgeInsets.all(20),
          children: [
            Text(
              'Hey, $name!',
            ),
            const Gap(5),
            const Text(
              "Thank you for your order! We'll keep you updated on its arrival.",
            ),
            const Gap(30),
            const Text(
              'Payment Method',
            ),
            Text(order.payment?.method ?? ''),
            const Divider(height: 40),
            const Text(
              'Order Detail 📦',
            ),
            const Gap(10),
            ...?order.items?.map(
              (e) => Padding(
                padding: const EdgeInsets.only(top: 5),
                child: Row(
                  children: [
                    Text(
                      '${e.name} ${e.variantName} - ${e.skuName} x ${e.quantity}',
                    ),
                    const Spacer(),
                    Text(
                      e.price.toRupee(),
                    ),
                  ],
                ),
              ),
            ),
            const Divider(height: 40),
            const Text(
              'Bill Summary',
            ),
            const Gap(10),
            ...[
              'Items Total',
              'Delivery Charges',
              'Tax',
            ].map(
              (e) => Padding(
                padding: const EdgeInsets.only(bottom: 5),
                child: Row(
                  children: [
                    Text(
                      e,
                    ),
                    const Spacer(),
                    Text(
                      1000.toRupee(),
                    ),
                  ],
                ),
              ),
            ),
            const Divider(height: 40),
            const Text(
              'Tracking 🚚',
            ),
            Column(
              children: [
                for (int i = 0; i < 4; i++) TrackingItem(i: i),
              ],
            ),
            const Gap(10),
            const Gap(20),
          ],
        ),
      ),
    );
  }
}
