import 'package:api/api.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import 'package:mithzar/core/extensions/string.dart';
import 'package:mithzar/src/product/ui/providers/product_detail_provider.dart';

class ProductColor extends ConsumerWidget {
  const ProductColor({
    super.key,
    required this.product,
    required this.variant,
  });

  final Product product;
  final ProductVariant variant;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Color',
        ),
        const Gap(10),
        Wrap(
          spacing: 10,
          children: product.variants?.map(
                (ele) {
                  final selected = variant.id == ele.id;
                  return GestureDetector(
                    onTap: () =>
                        ref.read(varinatIdProvider.notifier).update(ele.id),
                    child: Container(
                      height: 25,
                      width: 25,
                      padding: selected ? const EdgeInsets.all(3) : null,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        boxShadow: [
                          if (selected)
                            const BoxShadow(
                              spreadRadius: 1,
                            ),
                        ],
                      ),
                      child: DecoratedBox(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          boxShadow: const [
                            BoxShadow(
                              spreadRadius: 0.5,
                            ),
                          ],
                          color: ele.color.hexToColor(),
                        ),
                      ),
                    ),
                  );
                },
              ).toList() ??
              [],
        ),
      ],
    );
  }
}
