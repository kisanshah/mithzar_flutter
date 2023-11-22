import 'package:api/api.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:e_commerce_front_end/features/routes/router/app_router.gr.dart';
import 'package:e_commerce_front_end/features/shared/providers/router_provider.dart';
import 'package:e_commerce_front_end/features/theme/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';

class OrderItem extends ConsumerWidget {
  const OrderItem({
    super.key,
    required this.order,
  });
  final Order order;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final images = [
      'https://www.kushals.com/cdn/shop/products/zircon-bangle-white-2-4-rose-gold-zircon-bangle-151226-35657651519644.jpg?v=167570325900&width=686',
      'https://www.kushals.com/cdn/shop/files/kundan-bangle-green-victorian-2-4-kundan-bangle-161563-36710721290396.jpg?v=169850889700&width=244',
      'https://www.kushals.com/cdn/shop/files/temple-bangle-white-oxidised-gold-2-4-silver-temple-bangle-165556-36821343371420.jpg?v=170021384900&width=244',
      'https://www.kushals.com/cdn/shop/files/antique-bangle-ruby-gold-2-4-antique-bangle-165536-36821333147804.jpg?v=170021422200&width=244',
    ];
    return GestureDetector(
      onTap: () {
        if (order.id != null) {
          ref.read(routerProvider).push(OrderDetailRoute(id: order.id!));
        }
      },
      child: Container(
        padding: const EdgeInsets.all(15),
        decoration: BoxDecoration(
          color: AppColor.white,
          border: Border.all(color: Colors.black12),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "${order.products?.map((e) => e.name).join() ?? ''} + 1",
                  style: const TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Icon(Icons.arrow_forward_ios, size: 15),
              ],
            ),
            const Text(
              'Jan 24, 2020 | 20:04',
              style: TextStyle(color: AppColor.black),
            ),
            const Gap(5),
            Row(
              children: images
                  .map(
                    (e) => Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: CachedNetworkImage(
                        imageUrl: e,
                        height: 40,
                        width: 40,
                      ),
                    ),
                  )
                  .toList(),
            ),
            const Gap(10),
            Row(
              children: [
                Flexible(
                  flex: 3,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text('Order Rate'),
                      Row(
                        children: [
                          for (int i = 0; i < 5; i++)
                            const Icon(
                              Icons.star,
                              color: Colors.yellow,
                            ),
                        ],
                      ),
                    ],
                  ),
                ),
                const Expanded(
                  flex: 2,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Products'),
                      Text('15 Products'),
                    ],
                  ),
                ),
                const Expanded(
                  flex: 2,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Order Price'),
                      Text('₹20,000'),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
