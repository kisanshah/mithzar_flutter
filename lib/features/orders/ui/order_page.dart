import 'package:auto_route/auto_route.dart';
import 'package:e_commerce_front_end/features/home/ui/components/home_app_bar.dart';
import 'package:e_commerce_front_end/features/orders/ui/components/order_item.dart';
import 'package:e_commerce_front_end/features/orders/ui/providers/order_list_notifier.dart';
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
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: const HomeAppBar(
          title: 'ORDERS',
        ),
        body: Container(
          margin: const EdgeInsets.symmetric(horizontal: 20),
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(10)),
          ),
          child: CustomScrollView(
            slivers: [
              const SliverGap(10),
              SliverToBoxAdapter(
                child: TabBar(
                  padding: EdgeInsets.zero,
                  tabAlignment: TabAlignment.fill,
                  labelPadding: EdgeInsets.zero,
                  overlayColor:
                      const MaterialStatePropertyAll(Colors.transparent),
                  indicatorColor: Colors.black,
                  unselectedLabelColor: Colors.black,
                  labelColor: Colors.black,
                  tabs: [
                    Tab(
                      child: Text(
                        'Upcoming Orders',
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    Tab(
                      child: Text(
                        'Past Orders',
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SliverFillRemaining(
                child: TabBarView(
                  children: [
                    ListView.separated(
                      padding: const EdgeInsets.only(top: 20),
                      itemBuilder: (context, index) {
                        return OrderItem(
                          order: state.data[index % state.data.length],
                        );
                      },
                      separatorBuilder: (context, index) => const Gap(15),
                      itemCount: 10,
                    ),
                    ListView.separated(
                      padding: const EdgeInsets.only(top: 20),
                      itemBuilder: (context, index) {
                        return OrderItem(order: state.data[index]);
                      },
                      separatorBuilder: (context, index) => const Gap(15),
                      itemCount: state.data.length,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
