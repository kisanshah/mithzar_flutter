import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import 'package:mithzar/core/extensions/async_value.dart';
import 'package:mithzar/src/product/ui/components/product_color.dart';
import 'package:mithzar/src/product/ui/components/product_features.dart';
import 'package:mithzar/src/product/ui/components/product_info.dart';
import 'package:mithzar/src/product/ui/components/product_instructions.dart';
import 'package:mithzar/src/product/ui/components/product_nav_bar.dart';
import 'package:mithzar/src/product/ui/components/product_size.dart';
import 'package:mithzar/src/product/ui/providers/product_detail_provider.dart';
import 'package:mithzar/src/shared/components/custom_app_bar.dart';
import 'package:mithzar/src/shared/components/image_carousel.dart';
import 'package:mithzar/src/shared/components/sliver_horizontal_padded.dart';

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
  Widget build(BuildContext context) {
    final state = ref.watch(productDetailProvider(widget.id));
    return Scaffold(
      appBar: const CustomAppBar(title: ''),
      bottomNavigationBar:
          state.hasValue ? ProductNavBar(variant: state.value!.variant) : null,
      body: state.unfoldInitial((result) {
        final product = result.product;
        final variant = result.variant;
        return CustomScrollView(
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
            SliverHorizontalPadded(child: ProductSize(variant: variant)),
            const SliverGap(20),
            SliverHorizontalPadded(child: ProductFeatures(product: product)),
            const SliverGap(20),
            SliverHorizontalPadded(
                child: ProductInstructions(product: product)),
            const SliverGap(20),
          ],
        );
      }),
    );
  }
}
