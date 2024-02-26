import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mithzar/core/extensions/async_value.dart';
import 'package:mithzar/features/components/app_image.dart';
import 'package:mithzar/features/product/ui/providers/product_detail_provider.dart';

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
      // ref.refresh(productIdProvider.notifier).state = widget.id;
    });
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(productDetailProvider(widget.id));
    // final state = ref.watch(productDetailNotifierProvider(widget.id));
    return Scaffold(
      body: Center(
        child: state.unfold((result) {
          final product = result.product;
          final variant = result.variant;
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 100,
                child: PageView.builder(
                  itemCount: variant.images?.length,
                  itemBuilder: (context, index) {
                    return AppImage(url: variant.images![index].url!);
                  },
                ),
              ),
              Text(variant.color.toString()),
              ...?product.variants?.map(
                (e) {
                  return TextButton(
                    onPressed: () {
                      ref.read(varinatIdProvider.notifier).update(e.id);
                    },
                    child: Text(e.name ?? 'NULL'),
                  );
                },
              ),
            ],
          );
        }),
      ),
    );
    // return state.unfold(
    //   (product) => Scaffold(
    //     bottomNavigationBar: ProductDetailBottomBar(
    //       product: product,
    //     ),
    //     appBar: const CustomAppBar(title: ''),
    //     backgroundColor: Colors.white,
    //     body: SingleChildScrollView(
    //       child: Column(
    //         crossAxisAlignment: CrossAxisAlignment.start,
    //         children: [
    //           // FIXME(Kisan): variant after statemanagement
    //           // ImageCarousel(
    //           //   urls: product.images?.map((e) => e.url ?? '') ?? [],
    //           // ),
    //           Padding(
    //             padding: const EdgeInsets.all(20),
    //             child: Column(
    //               crossAxisAlignment: CrossAxisAlignment.start,
    //               children: [
    //                 Row(
    //                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //                   children: [
    //                     Flexible(
    //                       child: Text(
    //                         product.name ?? '',
    //                         style: const TextStyle(
    //                           fontSize: 20,
    //                           fontWeight: FontWeight.bold,
    //                         ),
    //                       ),
    //                     ),
    //                     // FIXME(Kisan): variant after statemanagement
    //                     // Text(
    //                     //   product.price.toRupee(),
    //                     //   style: const TextStyle(
    //                     //     fontSize: 20,
    //                     //     fontWeight: FontWeight.bold,
    //                     //   ),
    //                     // ),
    //                   ],
    //                 ),
    //                 const Gap(10),
    //                 Text(
    //                   product.description ?? '',
    //                   style: const TextStyle(
    //                     fontSize: 14,
    //                     color: Colors.grey,
    //                     fontWeight: FontWeight.w500,
    //                   ),
    //                 ),
    //               ],
    //             ),
    //           ),

    //           ...?product.variants?.map(
    //             (e) => Text(
    //               e.color ?? '',
    //             ),
    //           ),
    //         ],
    //       ),
    //     ),
    //   ),
    // );
  }
}
