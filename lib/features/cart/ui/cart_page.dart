import 'package:auto_route/auto_route.dart';
import 'package:e_commerce_front_end/features/cart/ui/components/cart_item.dart';
import 'package:e_commerce_front_end/features/cart/ui/providers/cart_list_provider.dart';
import 'package:e_commerce_front_end/features/components/custom_app_bar.dart';
import 'package:e_commerce_front_end/features/shared/state/user_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

@RoutePage()
class CartPage extends ConsumerStatefulWidget {
  const CartPage({super.key});

  @override
  ConsumerState<CartPage> createState() => _CartPageState();
}

class _CartPageState extends ConsumerState<CartPage> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      ref.watch(cartListNotifierProvider.notifier).fetch();
    });
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(cartListNotifierProvider);
    final notifier = ref.watch(cartListNotifierProvider.notifier);
    return Scaffold(
      appBar: const CustomAppBar(
        title: 'My Cart',
      ),
      body: state.unfold(
        (items) => CustomScrollView(
          slivers: [
            SliverPadding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              sliver: SliverList.separated(
                separatorBuilder: (context, index) => const Divider(),
                itemBuilder: (context, index) {
                  return CartItem(item: items[index]);
                },
                itemCount: items.length,
              ),
            ),

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
                    notifier.checkout();
                  },
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size.fromHeight(50),
                  ),
                  child: const Text('Continue'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

//Dotted Line Custom Painter
class DottedLinePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Colors.grey
      ..strokeWidth = 1;

    const dashWidth = 5.0;
    const dashSpace = 5.0;
    final dashCount = size.width / (dashWidth + dashSpace);

    for (var i = 0; i < dashCount; i++) {
      canvas.drawLine(
        Offset(dashWidth * i + dashSpace * i, 0),
        Offset(dashWidth * i + dashSpace * i + dashWidth, 0),
        paint,
      );
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}

class CartCalcItem extends StatelessWidget {
  const CartCalcItem({
    super.key,
    required this.title,
    required this.value,
  });

  final String title;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Row(
        children: [
          Text(
            '$title : ',
            style: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w600,
              color: Colors.grey,
            ),
          ),
          const Spacer(),
          Text(
            '\$ $value',
            style: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
