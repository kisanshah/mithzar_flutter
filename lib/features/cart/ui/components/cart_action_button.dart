import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mithzar/features/address/ui/providers/address_list_provider.dart';
import 'package:mithzar/features/cart/ui/providers/cart_provider.dart';
import 'package:sliver_tools/sliver_tools.dart';

class CartActionButton extends HookConsumerWidget {
  const CartActionButton({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final address = ref.watch(primaryAddressProvider);
    return MultiSliver(
      children: [
        SliverPadding(
          padding: const EdgeInsets.all(20),
          sliver: SliverToBoxAdapter(
            child: ElevatedButton(
              onPressed: () {
                if (address == null) {
                  //Open Address Bottomsheet
                } else {
                  ref.read(checkoutProvider);
                }
              },
              style: ElevatedButton.styleFrom(
                minimumSize: const Size.fromHeight(50),
                backgroundColor: Colors.black,
              ),
              child: Text(address == null ? 'Add Address' : 'Continue'),
            ),
          ),
        ),
      ],
    );
  }
}
