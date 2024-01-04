import 'package:api/api.dart';
import 'package:e_commerce_front_end/features/orders/ui/components/order_item.dart';
import 'package:e_commerce_front_end/features/shared/state/user_state.dart';
import 'package:e_commerce_front_end/features/theme/app_color.dart';
import 'package:flutter/material.dart' hide State;
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sliver_tools/sliver_tools.dart';

class OrderList extends ConsumerWidget {
  const OrderList({
    super.key,
    required this.provider,
    required this.title,
    this.viewAll = false,
  });

  final ProviderListenable<State<List<Order>>> provider;
  final bool viewAll;
  final String title;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(provider);
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
        state.unfoldSliver(
          (orders) => SliverPadding(
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
        ),
        const SliverGap(20),
      ],
    );
  }
}
