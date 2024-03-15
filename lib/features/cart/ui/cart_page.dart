import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mithzar/core/extensions/async_value.dart';
import 'package:mithzar/features/cart/ui/components/cart_list.dart';
import 'package:mithzar/features/cart/ui/providers/cart_provider.dart';
import 'package:mithzar/features/components/custom_app_bar.dart';

@RoutePage()
class CartPage extends ConsumerStatefulWidget {
  const CartPage({super.key});

  @override
  ConsumerState<CartPage> createState() => _CartPageState();
}

class _CartPageState extends ConsumerState<CartPage> {
  @override
  Widget build(BuildContext context) {
    final state = ref.watch(cartProvider);
    return Scaffold(
      appBar: const CustomAppBar(
        title: 'My Cart',
      ),
      body: state.unfoldInitial(
        (result) {
          final (address, items) = result;
          return CustomScrollView(
            slivers: [
              CartList(items: items),
              // Padding(
              //   padding: const EdgeInsets.all(20),
              //   child: Column(
              //     children: [
              //       ListView.separated(
              //         shrinkWrap: true,
              //         physics: const NeverScrollableScrollPhysics(),
              //         itemBuilder: (context, index) {
              //           return const CartItem();
              //         },
              //         separatorBuilder: (context, index) {
              //           return const Divider();
              //         },
              //         itemCount: 20,
              //       ),
              //       const Column(
              //         children: [
              //           CartCalcItem(
              //             title: 'Subtotal',
              //             value: '80.00',
              //           ),
              //           CartCalcItem(
              //             title: 'Delivery Fee',
              //             value: '5.00',
              //           ),
              //           CartCalcItem(
              //             title: 'Discount',
              //             value: '10.00',
              //           ),
              //         ],
              //       ),
              //       //Dotted Line
              //       Container(
              //         margin: const EdgeInsets.only(top: 20),
              //         height: 5,
              //         child: CustomPaint(
              //           painter: DottedLinePainter(),
              //         ),
              //       ),
              //       const CartCalcItem(
              //         title: 'Total',
              //         value: '75.00',
              //       ),
              //       const Gap(10),
              SliverPadding(
                padding: const EdgeInsets.all(20),
                sliver: SliverToBoxAdapter(
                  child: ElevatedButton(
                    onPressed: () {
                      // notifier.checkout();
                    },
                    style: ElevatedButton.styleFrom(
                      minimumSize: const Size.fromHeight(50),
                      backgroundColor: Colors.black,
                    ),
                    child: const Text('Continue'),
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
