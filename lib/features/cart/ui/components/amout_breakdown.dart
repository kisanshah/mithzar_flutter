import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mithzar/core/extensions/num.dart';
import 'package:mithzar/features/cart/ui/providers/cart_provider.dart';
import 'package:sliver_tools/sliver_tools.dart';

class AmoutBreakdown extends HookConsumerWidget {
  const AmoutBreakdown({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final breakdown = ref.watch(cartAmountProvider).value;
    return MultiSliver(
      children: [
        if (breakdown != null)
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Bill Summary',
                  ),
                  const Gap(15),
                  Row(
                    children: [
                      const Text(
                        'Item Total',
                      ),
                      const Spacer(),
                      Text(
                        breakdown.subtotal.toRupee(),
                      ),
                    ],
                  ),
                  const Gap(10),
                  Row(
                    children: [
                      const Text(
                        'GST',
                      ),
                      const Spacer(),
                      Text(
                        breakdown.tax.toRupee(),
                      ),
                    ],
                  ),
                  const Gap(10),
                  Row(
                    children: [
                      const Text(
                        'Delivery',
                      ),
                      const Spacer(),
                      Text(
                        breakdown.delivery.toRupee(),
                      ),
                    ],
                  ),
                  const Divider(
                    height: 30,
                    indent: 0,
                    color: Colors.black38,
                  ),
                  Row(
                    children: [
                      const Text(
                        'Grand Total',
                      ),
                      const Spacer(),
                      Text(
                        breakdown.total.toRupee(),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
      ],
    );
  }
}
