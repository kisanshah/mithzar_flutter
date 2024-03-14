import 'package:api/api.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mithzar/core/extensions/datetime.dart';
import 'package:mithzar/core/extensions/num.dart';
import 'package:mithzar/features/components/custom_app_bar.dart';
import 'package:mithzar/features/orders/ui/providers/order_detail_provider.dart';
import 'package:mithzar/features/shared/providers/user_provider.dart';
import 'package:mithzar/features/shared/state/user_state.dart';
import 'package:mithzar/features/theme/app_color.dart';

@RoutePage()
class OrderDetailPage extends ConsumerStatefulWidget {
  const OrderDetailPage({
    super.key,
    required this.id,
  });
  final int id;

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _OrderDetailPageState();
}

class _OrderDetailPageState extends ConsumerState<OrderDetailPage> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      ref.read(orderDetailNotifierProvider.notifier).fetch(widget.id);
    });
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(orderDetailNotifierProvider);
    final notifier = ref.read(orderDetailNotifierProvider.notifier);
    final name =
        ref.read(userNotifierProvider).name?.split(' ').firstOrNull ?? '';
    return state.unfold(
      (order) => Scaffold(
        appBar: const CustomAppBar(
          title: 'ORDER',
        ),
        body: ListView(
          shrinkWrap: true,
          padding: const EdgeInsets.all(20),
          children: [
            Text(
              'Hey, $name!',
              style: GoogleFonts.poppins(
                fontWeight: FontWeight.w500,
                fontSize: 22,
              ),
            ),
            const Gap(5),
            Text(
              "Thank you for your order! We'll keep you updated on its arrival.",
              style: GoogleFonts.poppins(
                fontSize: 15,
              ),
            ),
            const Gap(30),
            Text(
              'Order Detail 📦',
              style: GoogleFonts.poppins(
                fontWeight: FontWeight.w500,
                fontSize: 20,
              ),
            ),
            const Gap(15),
            ...{
              'Placed': order.createdAt.format(),
              'Products': '${order.items?.length}',
              'Quantity':
                  '${order.items?.fold(0, (value, OrderItem elem) => value + (elem.quantity ?? 0))}',
              'Total': order.total.toRupee(),
            }.entries.map(
                  (e) => OrderDetailItem(item: e),
                ),
            const Gap(30),
            Text(
              'Products',
              style: GoogleFonts.poppins(
                fontWeight: FontWeight.w500,
                fontSize: 20,
              ),
            ),
            const Gap(15),
            SizedBox(
              height: 220,
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: order.items?.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Container(
                    margin: const EdgeInsets.only(right: 10),
                    width: 175,
                    height: 250,
                    //TODO(Kisan): Add variant
                  );
                },
              ),
            ),
            const Gap(30),
            // Text(
            //   'Tracking 🚚 - WIP',
            //   style: GoogleFonts.poppins(
            //     fontWeight: FontWeight.w500,
            //     fontSize: 20,
            //   ),
            // ),
            // Column(
            //   children: [
            //     for (int i = 0; i < 4; i++) TrackingItem(i: i),
            //   ],
            // ),
            // const Gap(10),
            Row(
              children: [
                Expanded(
                  child: OutlinedButton(
                    onPressed: () => notifier.downloadInvoice(widget.id),
                    // style: OutlinedButton.styleFrom(
                    //   minimumSize: const Size.fromHeight(42),
                    //   side: const BorderSide(
                    //     color: AppColor.accentColor,
                    //   ),
                    // ),

                    child: const Text(
                      'Download Invoice',
                      style: TextStyle(),
                    ),
                  ),
                ),
                const Gap(10),
                Expanded(
                  child: OutlinedButton(
                    onPressed: () {},
                    // style: OutlinedButton.styleFrom(
                    //   minimumSize: const Size.fromHeight(42),
                    //   side: const BorderSide(
                    //     color: AppColor.red,
                    //   ),
                    // ),
                    child: const Text(
                      'Cancel Order',
                      style: TextStyle(color: AppColor.red),
                    ),
                  ),
                ),
              ],
            ),
            const Gap(20),
          ],
        ),
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
          Text(
            item.key,
            style: GoogleFonts.poppins(
              fontWeight: FontWeight.w500,
              fontSize: 15,
            ),
          ),
          const Spacer(),
          Text(
            item.value,
            style: GoogleFonts.poppins(
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}
