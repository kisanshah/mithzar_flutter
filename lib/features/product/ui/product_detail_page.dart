import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mithzar/core/extensions/async_value.dart';
import 'package:mithzar/core/extensions/num.dart';
import 'package:mithzar/core/extensions/string.dart';
import 'package:mithzar/data/helper/app_error.dart';
import 'package:mithzar/features/cart/ui/providers/cart_provider.dart';
import 'package:mithzar/features/components/custom_app_bar.dart';
import 'package:mithzar/features/product/ui/providers/product_detail_provider.dart';
import 'package:mithzar/features/shared/components/image_carousel.dart';
import 'package:mithzar/features/theme/app_color.dart';

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
      return SafeArea(
        top: false,
        child: Scaffold(
          appBar: const CustomAppBar(title: ''),
          bottomNavigationBar: Container(
            decoration: const BoxDecoration(
              border: Border(top: BorderSide(width: 0.1)),
            ),
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Expanded(
                  child: OutlinedButton(
                    style: OutlinedButton.styleFrom(
                      minimumSize: const Size.fromHeight(45),
                    ),
                    onPressed: () {
                      final skuId = ref.read(skuIdProvider);
                      ref
                          .read(addToCartProvider.notifier)
                          .add(variant.id!, skuId!);
                    },
                    child: const Text('Add To Cart'),
                  ),
                ),
                const Gap(10),
                Expanded(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      minimumSize: const Size.fromHeight(45),
                      backgroundColor: Colors.black,
                    ),
                    onPressed: () {
                      // TODO(Kisan): Integrate quick buy functionality
                      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                          content: Text(
                              'Work In Progress\nIntegrate quick buy functionality ',),),);
                    },
                    child: const Text('Buy Now'),
                  ),
                ),
              ],
            ),
          ),
          backgroundColor: Colors.white,
          body: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ImageCarousel(
                  urls: variant.images?.map((e) => e.url ?? '') ?? [],
                ),
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Flexible(
                            child: Text(
                              product.name ?? '',
                              style: const TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Text(
                            variant.price.toRupee(),
                            style: const TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      const Gap(5),
                      Text(
                        product.description ?? '',
                        style: const TextStyle(
                          fontSize: 12,
                          color: Colors.grey,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      const Gap(20),
                      Text(
                        'Color',
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                        ),
                      ),
                      const Gap(10),
                      Wrap(
                        spacing: 10,
                        children: product.variants?.map(
                              (ele) {
                                final selected = variant.id == ele.id;
                                return GestureDetector(
                                  onTap: () => ref
                                      .read(varinatIdProvider.notifier)
                                      .update(ele.id),
                                  child: Container(
                                    height: 25,
                                    width: 25,
                                    padding: selected
                                        ? const EdgeInsets.all(3)
                                        : null,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      boxShadow: [
                                        if (selected)
                                          const BoxShadow(
                                            spreadRadius: 1,
                                            color: AppColor.black,
                                          ),
                                      ],
                                      color: AppColor.white,
                                    ),
                                    child: DecoratedBox(
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        boxShadow: const [
                                          BoxShadow(
                                            spreadRadius: 0.5,
                                            color: AppColor.black,
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
                      const Gap(30),
                      Text(
                        'Select Size',
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                        ),
                      ),
                      const Gap(5),
                      Wrap(
                        spacing: 10,
                        children:
                            List.generate(variant.skus?.length ?? 0, (index) {
                          final sku = variant.skus![index];
                          final selected = ref.watch(skuIdProvider) == sku.id;
                          final child = Text(
                            sku.size ?? '',
                            textAlign: TextAlign.center,
                          );
                          if (selected) {
                            return ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                padding: EdgeInsets.zero,
                                backgroundColor: Colors.black,
                                minimumSize: const Size(35, 35),
                                tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                              ),
                              onPressed: () => ref
                                  .read(skuIdProvider.notifier)
                                  .update(sku.id),
                              child: child,
                            );
                          }

                          return OutlinedButton(
                            style: OutlinedButton.styleFrom(
                              padding: EdgeInsets.zero,
                              minimumSize: const Size(35, 35),
                              tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                            ),
                            onPressed: () =>
                                ref.read(skuIdProvider.notifier).update(sku.id),
                            child: child,
                          );
                        }),
                      ),
                      const Gap(20),
                      Text(
                        'Features',
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                        ),
                      ),
                      const Gap(10),
                      GridView.builder(
                        padding: EdgeInsets.zero,
                        physics: const NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
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
                                style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 12,
                                ),
                              ),
                              Text(
                                feat.value!,
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                style: GoogleFonts.poppins(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w300,
                                ),
                              ),
                            ],
                          );
                        },
                      ),
                      Text(
                        'Instructions',
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                        ),
                      ),
                      const Gap(10),
                      ...List.generate(
                        product.instructions?.length ?? 0,
                        (index) {
                          final instruction = product.instructions![index];
                          return Text(
                            '\u2022 $instruction',
                            overflow: TextOverflow.ellipsis,
                            style: GoogleFonts.poppins(
                              fontSize: 12,
                            ),
                          );
                        },
                      ),
                      const Gap(30),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      );
    });
  }
}
