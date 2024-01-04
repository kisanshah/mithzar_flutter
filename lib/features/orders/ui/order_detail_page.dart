import 'package:api/api.dart';
import 'package:auto_route/auto_route.dart';
import 'package:e_commerce_front_end/core/extensions/datetime.dart';
import 'package:e_commerce_front_end/core/extensions/num.dart';
import 'package:e_commerce_front_end/features/components/custom_app_bar.dart';
import 'package:e_commerce_front_end/features/orders/ui/providers/order_detail_provider.dart';
import 'package:e_commerce_front_end/features/shared/components/product_item.dart';
import 'package:e_commerce_front_end/features/shared/providers/user_provider.dart';
import 'package:e_commerce_front_end/features/shared/state/user_state.dart';
import 'package:e_commerce_front_end/features/theme/app_color.dart';
import 'package:e_commerce_front_end/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

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
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      ref.read(orderDetailNotifierProvider.notifier).fetch(widget.id);
    });
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(orderDetailNotifierProvider);
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
              'Products': '${order.products?.length}',
              'Quantity':
                  '${order.products?.fold(0, (value, Product elem) => value + (elem.quantity?.toInt() ?? 0))}',
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
                itemCount: order.products?.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Container(
                    margin: const EdgeInsets.only(right: 10),
                    width: 175,
                    height: 250,
                    child: ProductItem(
                      product: order.products?[index],
                    ),
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
                  child: OutlinedButton.icon(
                    onPressed: () {},
                    // style: OutlinedButton.styleFrom(
                    //   minimumSize: const Size.fromHeight(42),
                    //   side: const BorderSide(
                    //     color: AppColor.accentColor,
                    //   ),
                    // ),
                    icon: RotatedBox(
                      quarterTurns: 1,
                      child: Assets.svg.arrowRight.svg(
                        height: 17,
                      ),
                    ),
                    label: const Text(
                      'Dowload Invoice',
                      style: TextStyle(),
                    ),
                  ),
                ),
                const Gap(10),
                Expanded(
                  child: OutlinedButton.icon(
                    onPressed: () {},
                    // style: OutlinedButton.styleFrom(
                    //   minimumSize: const Size.fromHeight(42),
                    //   side: const BorderSide(
                    //     color: AppColor.red,
                    //   ),
                    // ),
                    icon: Assets.svg.cancel.svg(
                      colorFilter:
                          const ColorFilter.mode(AppColor.red, BlendMode.srcIn),
                    ),
                    label: const Text(
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
