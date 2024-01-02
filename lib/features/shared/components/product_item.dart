import 'package:api/api.dart';
import 'package:e_commerce_front_end/core/extensions/num.dart';
import 'package:e_commerce_front_end/features/components/app_image.dart';
import 'package:e_commerce_front_end/features/routes/router/app_router.gr.dart';
import 'package:e_commerce_front_end/features/shared/providers/router_provider.dart';
import 'package:e_commerce_front_end/features/theme/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ProductItem extends ConsumerWidget {
  const ProductItem({
    super.key,
    this.product,
  });

  final Product? product;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final router = ref.watch(routerProvider);
    if (product == null) {
      return const SizedBox();
    }
    return GestureDetector(
      onTap: () => router.push(ProductDetailRoute(id: product!.id!)),
      child: Container(
        decoration: BoxDecoration(
          color: AppColor.white,
          border: Border.all(color: const Color(0xFFdfe6e9)),
          borderRadius: BorderRadius.circular(0),
        ),
        child: Column(
          children: [
            SizedBox(
              height: 150,
              child: ClipRRect(
                child: AppImage(
                  url: '${product?.thumbnail?.url}',
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
                      product?.name ?? '',
                      maxLines: 1,
                      style: const TextStyle(
                        overflow: TextOverflow.ellipsis,
                        fontSize: 14,
                      ),
                    ),
                    Text(
                      product?.price?.toRupee() ?? '',
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
