import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mithzar/core/extensions/async_value.dart';
import 'package:mithzar/core/extensions/num.dart';
import 'package:mithzar/features/orders/ui/providers/order_detail_provider.dart';
import 'package:mithzar/features/shared/providers/user_provider.dart';
import 'package:mithzar/features/theme/app_color.dart';

@RoutePage()
class OrderDetailPage extends HookConsumerWidget {
  const OrderDetailPage({
    super.key,
    required this.id,
  });
  final int id;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(orderDetailProvider(id));
    final notifier = ref.read(orderDetailProvider(id).notifier);
    final name =
        ref.read(userNotifierProvider).name?.split(' ').firstOrNull ?? '';
    return state.unfold(
      (order) => Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          leading: GestureDetector(
            child: const Icon(
              Icons.arrow_back,
              color: AppColor.black,
            ),
            onTap: () => context.popRoute(),
          ),
          actions: [
            PopupMenuButton(
              padding: EdgeInsets.zero,
              elevation: 0,
              itemBuilder: (context) {
                return [
                  const PopupMenuItem(
                    child: Text('Support'),
                  ),
                  const PopupMenuItem(
                    child: Text(
                      'Cancel',
                      style: TextStyle(color: AppColor.red),
                    ),
                  ),
                ];
              },
            ),
            const Gap(10),
          ],
          centerTitle: true,
          title: Text(
            'ORDER',
            textAlign: TextAlign.center,
            style: GoogleFonts.poppins(
              color: AppColor.black,
              fontWeight: FontWeight.w600,
              letterSpacing: 5,
              fontSize: 20,
            ),
          ),
        ),
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            children: [
              Expanded(
                child: OutlinedButton(
                  onPressed: () => notifier.downloadInvoice(),
                  child: const Text(
                    'Download Invoice',
                    style: TextStyle(),
                  ),
                ),
              ),
              const Gap(10),
              Expanded(
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black,
                  ),
                  child: const Text(
                    'Re Order',
                  ),
                ),
              ),
            ],
          ),
        ),
        body: ListView(
          padding: const EdgeInsets.all(20),
          children: [
            Text(
              'Hey, $name!',
              style: GoogleFonts.poppins(
                fontWeight: FontWeight.w500,
                fontSize: 18,
              ),
            ),
            const Gap(5),
            Text(
              "Thank you for your order! We'll keep you updated on its arrival.",
              style: GoogleFonts.poppins(
                fontSize: 14,
              ),
            ),
            const Gap(30),
            Text(
              'Payment Method',
              style: GoogleFonts.poppins(
                fontWeight: FontWeight.w500,
                fontSize: 16,
              ),
            ),
            Text(order.payment?.method ?? ''),
            const Divider(height: 40),
            Text(
              'Order Detail 📦',
              style: GoogleFonts.poppins(
                fontWeight: FontWeight.w500,
                fontSize: 16,
              ),
            ),
            const Gap(10),
            ...?order.items?.map(
              (e) => Padding(
                padding: const EdgeInsets.only(top: 5),
                child: Row(
                  children: [
                    Text(
                      '${e.name} ${e.variantName} - ${e.skuName} x ${e.quantity}',
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w500,
                        fontSize: 14,
                      ),
                    ),
                    const Spacer(),
                    Text(
                      e.price.toRupee(),
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w500,
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const Divider(height: 40),
            Text(
              'Bill Summary',
              style: GoogleFonts.poppins(
                fontWeight: FontWeight.w500,
                fontSize: 16,
              ),
            ),
            const Gap(10),
            ...[
              'Items Total',
              'Delivery Charges',
              'Tax',
            ].map(
              (e) => Padding(
                padding: const EdgeInsets.only(bottom: 5),
                child: Row(
                  children: [
                    Text(
                      e,
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w500,
                        fontSize: 14,
                      ),
                    ),
                    const Spacer(),
                    Text(
                      1000.toRupee(),
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w500,
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const Gap(15),

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

            const Gap(20),
          ],
        ),
      ),
    );
  }
}
