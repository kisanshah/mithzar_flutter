import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import 'package:mithzar/features/components/custom_app_bar.dart';
import 'package:mithzar/features/product/ui/components/product_detail_bottom_bar.dart';
import 'package:mithzar/features/product/ui/providers/product_detail_provider.dart';
import 'package:mithzar/features/shared/state/user_state.dart';

@RoutePage()
class ProductDetailPage extends ConsumerStatefulWidget {
  const ProductDetailPage({super.key, required this.id});
  final int id;

  @override
  ConsumerState<ProductDetailPage> createState() => _ProductDetailPageState();
}

class _ProductDetailPageState extends ConsumerState<ProductDetailPage> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      ref.read(productDetailNotifierProvider(widget.id).notifier).fetch();
    });
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(productDetailNotifierProvider(widget.id));
    return state.unfold(
      (product) => Scaffold(
        bottomNavigationBar: ProductDetailBottomBar(
          product: product,
        ),
        appBar: const CustomAppBar(title: ''),
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // FIXME(Kisan): variant after statemanagement
              // ImageCarousel(
              //   urls: product.images?.map((e) => e.url ?? '') ?? [],
              // ),
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
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        // FIXME(Kisan): variant after statemanagement
                        // Text(
                        //   product.price.toRupee(),
                        //   style: const TextStyle(
                        //     fontSize: 20,
                        //     fontWeight: FontWeight.bold,
                        //   ),
                        // ),
                      ],
                    ),
                    const Gap(10),
                    Text(
                      product.description ?? '',
                      style: const TextStyle(
                        fontSize: 14,
                        color: Colors.grey,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
