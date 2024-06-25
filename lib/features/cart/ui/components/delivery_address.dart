import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mithzar/features/address/ui/providers/address_list_provider.dart';
import 'package:sliver_tools/sliver_tools.dart';

class DeliveryAddress extends HookConsumerWidget {
  const DeliveryAddress({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final address = ref.watch(primaryAddressProvider);
    return MultiSliver(
      children: [
        if (address != null)
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      const Text(
                        'Deliver At',
                      ),
                      const Spacer(),
                      TextButton(
                        onPressed: () {},
                        style: TextButton.styleFrom(
                          padding: EdgeInsets.zero,
                          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                        ),
                        child: const Text('Change'),
                      ),
                    ],
                  ),
                  const Gap(5),
                  Text(
                    [
                      address.streetAddress,
                      address.city,
                      address.postalCode,
                    ].where((element) => element != null).join(', '),
                  ),
                ],
              ),
            ),
          ),
      ],
    );
  }
}
