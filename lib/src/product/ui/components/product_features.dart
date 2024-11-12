import 'package:api/api.dart';
import 'package:flutter/widgets.dart';
import 'package:gap/gap.dart';
import 'package:mithzar/core/extensions/context.dart';

class ProductFeatures extends StatelessWidget {
  const ProductFeatures({
    super.key,
    required this.product,
  });

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Features',
          style: context.text.semibold14,
        ),
        const Gap(10),
        GridView.builder(
          padding: EdgeInsets.zero,
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 1 / .25,
          ),
          itemCount: product.features?.length ?? 0,
          itemBuilder: (context, index) {
            final feat = product.features?[index];
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  feat?.title ?? '',
                  style: context.text.semibold12,
                ),
                Text(
                  feat?.description ?? '',
                  maxLines: 2,
                  style: context.text.semibold12.copyWith(
                    color: const Color(0xFF656565),
                  ),
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            );
          },
        ),
      ],
    );
  }
}
