import 'package:api/api.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import 'package:mithzar/features/cart/ui/providers/cart_list_provider.dart';
import 'package:mithzar/features/product/ui/providers/product_detail_provider.dart';

class ProductNavBar extends ConsumerWidget {
  const ProductNavBar({
    super.key,
    required this.variant,
  });
  final ProductVariant variant;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final skuId = ref.watch(skuIdProvider);
    return DecoratedBox(
      decoration: const BoxDecoration(
        border: Border(top: BorderSide(width: 0.1)),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Row(
          children: [
            Expanded(
              child: OutlinedButton(
                style: OutlinedButton.styleFrom(
                  minimumSize: const Size.fromHeight(45),
                ),
                onPressed: () {
                  ref.read(cartListProvider.notifier).add(variant.id!, skuId!);
                },
                child: const Text('Add To Cart'),
              ),
            ),
            const Gap(10),
            Expanded(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size.fromHeight(45),
                  backgroundColor: Colors.black,
                ),
                onPressed: () {
                  // TODO(Kisan): Integrate quick buy functionality
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text(
                        'Work In Progress\nIntegrate quick buy functionality ',
                      ),
                    ),
                  );
                },
                child: const Text('Buy Now'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
