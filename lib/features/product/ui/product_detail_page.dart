import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import 'package:mithzar/core/extensions/async_value.dart';
import 'package:mithzar/data/helper/app_error.dart';
import 'package:mithzar/features/cart/ui/providers/cart_provider.dart';
import 'package:mithzar/features/components/custom_app_bar.dart';
import 'package:mithzar/features/product/ui/components/product_color.dart';
import 'package:mithzar/features/product/ui/components/product_feature.dart';
import 'package:mithzar/features/product/ui/components/product_info.dart';
import 'package:mithzar/features/product/ui/components/product_instruction.dart';
import 'package:mithzar/features/product/ui/components/product_nav_bar.dart';
import 'package:mithzar/features/product/ui/components/product_size.dart';
import 'package:mithzar/features/product/ui/providers/product_detail_provider.dart';
import 'package:mithzar/features/shared/components/image_carousel.dart';
import 'package:mithzar/features/shared/components/sliver_horizontal_padded.dart';

@RoutePage()
class ProductDetailPage extends ConsumerStatefulWidget {
  const ProductDetailPage({super.key, required this.id, this.variantId});
  final int id;
  final int? variantId;

  @override
  ConsumerState<ProductDetailPage> createState() => _ProductDetailPageState();
}

class _ProductDetailPageState extends ConsumerState<ProductDetailPage> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      ref.listenManual(addToCartProvider, (previous, next) {
        if (next.hasError) {
          final error = switch (next.error) {
            AppError(:final String message) => message,
            _ => 'Something went wrong!'
          };
          ScaffoldMessenger.of(context)
              .showSnackBar(SnackBar(content: Text(error)));
        }
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(productDetailProvider(widget.id));
    return state.unfold((result) {
      final product = result.product;
      final variant = result.variant;
      return Scaffold(
        appBar: const CustomAppBar(title: ''),
        bottomNavigationBar: ProductNavBar(variant: variant),
        body: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: ImageCarousel(
                urls: variant.images?.map((e) => e.url ?? '') ?? [],
              ),
            ),
            const SliverGap(20),
            SliverHorizontalPadded(
              child: ProductInfo(product: product, variant: variant),
            ),
            const SliverGap(20),
            SliverHorizontalPadded(
              child: ProductColor(product: product, variant: variant),
            ),
            const SliverGap(30),
            SliverHorizontalPadded(
              child: ProductSize(variant: variant),
            ),
            const SliverGap(20),
            SliverHorizontalPadded(
              child: ProductFeature(product: product),
            ),
            const SliverGap(20),
            SliverHorizontalPadded(
              child: ProductInstruction(product: product),
            ),
          ],
        ),
      );
    });
  }
}
