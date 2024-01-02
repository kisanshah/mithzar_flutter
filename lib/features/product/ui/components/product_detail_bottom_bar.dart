import 'package:api/api.dart';
import 'package:e_commerce_front_end/features/cart/ui/providers/cart_provider.dart';
import 'package:e_commerce_front_end/features/shared/state/user_state.dart';
import 'package:e_commerce_front_end/features/theme/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ProductDetailBottomBar extends ConsumerWidget {
  const ProductDetailBottomBar({
    super.key,
    required this.product,
  });

  final Product product;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(cartItemNotifierProvider);
    return SizedBox(
      height: 100,
      child: state.unfold(
        (data) => SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: ElevatedButton(
              onPressed: () {
                ref.read(cartItemNotifierProvider.notifier).add(product.id!);
              },
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(
                  vertical: 12,
                ),
              ),
              child: const Text(
                'Add to Cart',
                style: TextStyle(
                  fontSize: 16,
                  color: AppColor.white,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
