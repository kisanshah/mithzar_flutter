import 'package:api/api.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mithzar/src/cart/ui/components/cart_item.dart';
import 'package:sliver_tools/sliver_tools.dart';

class CartList extends HookConsumerWidget {
  const CartList({
    super.key,
    required this.items,
  });
  final List<Cart> items;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MultiSliver(
      children: [
        SliverPadding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          sliver: SliverList.separated(
            separatorBuilder: (context, index) => const Divider(),
            itemBuilder: (context, index) {
              return CartItem(
                index: index,
              );
            },
            itemCount: items.length,
          ),
        ),
      ],
    );
  }
}
