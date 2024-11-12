import 'package:api/api.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import 'package:mithzar/core/extensions/context.dart';
import 'package:mithzar/core/extensions/num.dart';

class ProductInfo extends ConsumerWidget {
  const ProductInfo({
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
        Text(
          product.name ?? '',
          style: context.text.regular14,
        ),
        Text(
          variant.price?.toRupee() ?? '',
          style: context.text.semibold14,
        ),
        const Gap(5),
        Text(
          product.description ?? '',
          style: context.text.regular12,
        ),
      ],
    );
  }
}
