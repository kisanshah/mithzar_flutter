import 'package:api/api.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mithzar/features/product/ui/providers/product_detail_provider.dart';

class ProductSize extends ConsumerWidget {
  const ProductSize({
    super.key,
    required this.variant,
  });

  final ProductVariant variant;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Select Size',
          style: GoogleFonts.poppins(
            fontWeight: FontWeight.w500,
            fontSize: 16,
          ),
        ),
        const Gap(5),
        Wrap(
          spacing: 10,
          children: List.generate(variant.skus?.length ?? 0, (index) {
            final sku = variant.skus![index];
            final selected = ref.watch(skuIdProvider) == sku.id;
            final child = Text(
              sku.size ?? '',
              textAlign: TextAlign.center,
            );
            if (selected) {
              return ElevatedButton(
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.zero,
                  backgroundColor: Colors.black,
                  minimumSize: const Size(35, 35),
                  tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                ),
                onPressed: () =>
                    ref.read(skuIdProvider.notifier).update(sku.id),
                child: child,
              );
            }

            return OutlinedButton(
              style: OutlinedButton.styleFrom(
                padding: EdgeInsets.zero,
                minimumSize: const Size(35, 35),
                tapTargetSize: MaterialTapTargetSize.shrinkWrap,
              ),
              onPressed: () => ref.read(skuIdProvider.notifier).update(sku.id),
              child: child,
            );
          }),
        ),
      ],
    );
  }
}
