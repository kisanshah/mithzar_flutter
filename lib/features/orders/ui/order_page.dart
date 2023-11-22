import 'package:auto_route/auto_route.dart';
import 'package:e_commerce_front_end/features/home/ui/components/home_app_bar.dart';
import 'package:e_commerce_front_end/features/orders/ui/components/order_item.dart';
import 'package:e_commerce_front_end/features/orders/ui/providers/order_list_notifier.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';

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
        // appBar: AppBar(
        //   elevation: 0,
        //   backgroundColor: Colors.white,
        //   centerTitle: false,
        //   title: const Text(
        //     'Orders',
        //     style: TextStyle(
        //       color: AppColor.black,
        //       fontWeight: FontWeight.bold,
        //       fontSize: 25,
        //     ),
        //   ),
        //   bottom: const TabBar(
        //     overlayColor: MaterialStatePropertyAll(Colors.transparent),
        //     padding: EdgeInsets.symmetric(horizontal: 20),
        //     indicatorColor: Colors.black,
        //     unselectedLabelColor: Colors.black,
        //     labelColor: Colors.black,
        //     tabs: [
        //       Tab(
        //         text: 'Upcoming Orders',
        //       ),
        //       Tab(
        //         text: 'Past Orders',
        //       ),
        //     ],
        //   ),
        // ),
        body: Container(
          margin: const EdgeInsets.symmetric(horizontal: 20),
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(10)),
          ),
          child: Column(
            children: [
              Expanded(
                child: TabBarView(
                  children: [
                    ListView.separated(
                      shrinkWrap: true,
                      itemBuilder: (context, index) {
                        return OrderItem(order: state.data[index]);
                      },
                      separatorBuilder: (context, index) => const Gap(0),
                      itemCount: state.data.length,
                    ),
                    ListView.separated(
                      shrinkWrap: true,
                      itemBuilder: (context, index) {
                        return OrderItem(order: state.data[index]);
                      },
                      separatorBuilder: (context, index) =>
                          const Divider(thickness: 1),
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
