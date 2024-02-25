import 'package:api/api.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mithzar/core/extensions/num.dart';
import 'package:mithzar/features/components/app_image.dart';
import 'package:mithzar/features/routes/router/app_router.gr.dart';
import 'package:mithzar/features/shared/providers/router_provider.dart';
import 'package:mithzar/features/theme/app_color.dart';

class ProductItem extends ConsumerWidget {
  const ProductItem({
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
        router.push(ProductDetailRoute(id: variant!.id!));
      },
      child: Container(
        decoration: BoxDecoration(
          color: AppColor.white,
          border: Border.all(color: const Color(0xFFdfe6e9)),
          borderRadius: BorderRadius.circular(0),
        ),
        child: Column(
          children: [
            if (variant?.images?.first.url != null)
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
                      maxLines: 1,
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
