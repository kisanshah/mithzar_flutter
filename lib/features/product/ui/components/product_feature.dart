import 'package:api/api.dart';
import 'package:flutter/widgets.dart';
import 'package:gap/gap.dart';

class ProductFeature extends StatelessWidget {
  const ProductFeature({
    super.key,
    required this.product,
  });

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Features',
        ),
        const Gap(10),
        GridView.builder(
          padding: EdgeInsets.zero,
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 1 / .4,
          ),
          itemCount: product.features?.length,
          itemBuilder: (context, index) {
            final feat = product.features![index];
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  feat.key!,
                ),
                Text(
                  feat.value!,
                  maxLines: 2,
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
