import 'package:auto_route/auto_route.dart';
import 'package:e_commerce_front_end/features/orders/ui/components/tracking_item.dart';
import 'package:e_commerce_front_end/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';

@RoutePage()
class OrderDetailPage extends ConsumerStatefulWidget {
  const OrderDetailPage({
    super.key,
    required this.id,
  });
  final String id;

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _OrderDetailPageState();
}

class _OrderDetailPageState extends ConsumerState<OrderDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        toolbarHeight: 0,
        backgroundColor: Colors.white,
      ),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          const Text(
            'Hey, Ricky!',
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 22,
            ),
          ),
          const Text(
            "Thank you for your order! We'll keep you updated on its arrival.",
            style: TextStyle(
              fontSize: 15,
            ),
          ),
          const Gap(20),
          const Text(
            'Order Details',
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w600,
              fontSize: 18,
            ),
          ),
          const Gap(15),
          ...{
            'Order ID': '#546789012',
            'Order Placed': '25 July, 2023',
            'Total': '¢1,79,998',
          }.entries.map(
                (e) => OrderDetailItem(item: e),
              ),
          const Gap(20),
          const Text(
            'Products',
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w600,
              fontSize: 18,
            ),
          ),
          const Gap(15),
          Column(
            children: [
              for (int i = 0; i < 4; i++) TrackingItem(i: i),
            ],
          ),
          Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              // color: Colors.red,
              border: Border.all(),
              borderRadius: const BorderRadius.all(Radius.circular(10)),
            ),
            child: ListView.separated(
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return Row(
                  children: [
                    Assets.svg.invoice.svg(),
                    const Gap(10),
                    const Text(
                      'Download Invoice',
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                  ],
                );
              },
              separatorBuilder: (context, index) => const Divider(),
              itemCount: 5,
              // children: [

              //   const Gap(15),
              //   Row(
              //     children: [
              //       Assets.svg.invoice.svg(),
              //       const Gap(10),
              //       const Text(
              //         'Gift Wrap',
              //         style: TextStyle(
              //           fontSize: 16,
              //         ),
              //       ),
              //     ],
              //   ),
              // ],
            ),
          ),
        ],
      ),
    );
  }
}

class OrderDetailItem extends StatelessWidget {
  const OrderDetailItem({
    super.key,
    required this.item,
  });
  final MapEntry<String, String> item;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Row(
        children: [
          Text(item.key),
          const Spacer(),
          Text(item.value),
        ],
      ),
    );
  }
}
