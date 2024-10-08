import 'package:api/api.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mithzar/core/extensions/num.dart';
import 'package:mithzar/src/routes/router/app_router.gr.dart';
import 'package:mithzar/src/shared/components/app_image.dart';
import 'package:mithzar/src/shared/providers/router_provider.dart';

class VariantItem extends ConsumerWidget {
  const VariantItem({
    super.key,
    this.variant,
    this.onClick,
  });

  final ProductVariant? variant;
  final VoidCallback? onClick;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final router = ref.watch(routerProvider);
    if (variant == null) {
      return const SizedBox();
    }
    return GestureDetector(
      onTap: () {
        onClick?.call();
        router.push(ProductDetailRoute(id: variant!.product!.id!));
      },
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(color: const Color(0xFFdfe6e9)),
          borderRadius: BorderRadius.circular(0),
        ),
        child: Column(
          children: [
            if (variant?.thumbnail != null)
              SizedBox(
                height: 150,
                child: ClipRRect(
                  child: AppImage(
                    url: '${variant?.images?.first.url}',
                    width: double.infinity,
                  ),
                ),
              ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "${variant?.product?.name} ${variant?.name ?? ''}",
                      maxLines: 2,
                      style: const TextStyle(
                        overflow: TextOverflow.ellipsis,
                        fontSize: 14,
                      ),
                    ),
                    Text(
                      variant?.price?.toRupee() ?? '',
                      style: const TextStyle(
                        overflow: TextOverflow.ellipsis,
                        fontSize: 16,
                      ),
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
