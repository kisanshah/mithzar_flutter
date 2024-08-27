import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import 'package:mithzar/core/extensions/async_value.dart';
import 'package:mithzar/src/cart/ui/components/amout_breakdown.dart';
import 'package:mithzar/src/cart/ui/components/cart_action_button.dart';
import 'package:mithzar/src/cart/ui/components/cart_list.dart';
import 'package:mithzar/src/cart/ui/components/delivery_address.dart';
import 'package:mithzar/src/cart/ui/providers/cart_provider.dart';
import 'package:mithzar/src/shared/components/custom_app_bar.dart';

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
          final (_, items, _) = result;
          return CustomScrollView(
            slivers: [
              CartList(items: items),
              const DeliveryAddress(),
              const SliverGap(30),
              const AmoutBreakdown(),
              const CartActionButton(),
            ],
          );
        },
      ),
    );
  }
}
