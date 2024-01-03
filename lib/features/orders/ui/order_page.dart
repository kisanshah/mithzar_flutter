import 'package:auto_route/auto_route.dart';
import 'package:e_commerce_front_end/features/home/ui/components/home_app_bar.dart';
import 'package:e_commerce_front_end/features/orders/ui/components/order_item.dart';
import 'package:e_commerce_front_end/features/orders/ui/providers/order_list_notifier.dart';
import 'package:e_commerce_front_end/features/shared/state/user_state.dart';
import 'package:e_commerce_front_end/features/theme/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

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
      appBar: const HomeAppBar(
        title: 'ORDERS',
      ),
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Text(
                'Recent Orders 📦',
                style: GoogleFonts.poppins(
                  fontSize: 20,
                  color: AppColor.black,
                  fontWeight: FontWeight.w500,
                ),
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
          const SliverGap(50),
          SliverAppBar(
            backgroundColor: Colors.transparent,
            actions: [
              Text(
                'View All  →',
                style: GoogleFonts.poppins(
                  color: AppColor.black,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const Gap(20),
            ],
            centerTitle: false,
            title: Text(
              'Past Orders 📦',
              style: GoogleFonts.poppins(
                fontSize: 20,
                color: AppColor.black,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          const SliverGap(10),
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
        ],
      ),
    );
  }
}
