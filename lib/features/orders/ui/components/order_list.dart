import 'package:api/api.dart' hide OrderItem;
import 'package:flutter/material.dart' hide State;
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mithzar/features/orders/ui/components/order_item.dart';
import 'package:mithzar/features/theme/app_color.dart';
import 'package:sliver_tools/sliver_tools.dart';

class OrderList extends ConsumerWidget {
  const OrderList({
    super.key,
    required this.title,
    required this.orders,
    this.viewAll = false,
  });

  final List<Order> orders;
  final bool viewAll;
  final String title;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MultiSliver(
      children: [
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Row(
              children: [
                Text(
                  title,
                  style: GoogleFonts.poppins(
                    fontSize: 20,
                    color: AppColor.black,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const Spacer(),
                if (viewAll)
                  Text(
                    'View All  →',
                    style: GoogleFonts.poppins(
                      color: AppColor.black,
                      fontWeight: FontWeight.w500,
                      fontSize: 15,
                    ),
                  ),
              ],
            ),
          ),
        ),
        SliverPadding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          sliver: SliverList.separated(
            itemCount: orders.length,
            itemBuilder: (context, index) {
              return OrderItem(order: orders[index]);
            },
            separatorBuilder: (context, index) => const Divider(
              height: 30,
            ),
          ),
        ),
        const SliverGap(20),
      ],
    );
  }
}
