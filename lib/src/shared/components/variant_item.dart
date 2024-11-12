import 'package:api/api.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mithzar/core/extensions/context.dart';
import 'package:mithzar/core/extensions/num.dart';
import 'package:mithzar/src/routes/router/app_router.gr.dart';
import 'package:mithzar/src/shared/components/app_image.dart';
import 'package:mithzar/src/shared/providers/router_provider.dart';

class VariantItem extends ConsumerWidget {
  const VariantItem({super.key, this.variant});

  final ProductVariant? variant;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final router = ref.watch(routerProvider);
    if (variant == null) {
      return const SizedBox();
    }
    return GestureDetector(
      onTap: () {
        router.push(ProductDetailRoute(id: variant!.product!.id!));
      },
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(color: context.colors.border),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Expanded(
              flex: 4,
              child: AppImage(
                url: '${variant?.images?.first.url}',
                width: double.infinity,
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text(
                      "${variant?.product?.name} ${variant?.name ?? ''}",
                      maxLines: 1,
                      style: context.text.light12,
                    ),
                    Text(
                      variant?.price?.toRupee() ?? '',
                      style: context.text.semibold12,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
