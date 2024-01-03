import 'package:api/api.dart';
import 'package:e_commerce_front_end/core/extensions/datetime.dart';
import 'package:e_commerce_front_end/core/extensions/num.dart';
import 'package:e_commerce_front_end/core/extensions/product.dart';
import 'package:e_commerce_front_end/features/orders/ui/components/order_image.dart';
import 'package:e_commerce_front_end/features/routes/router/app_router.gr.dart';
import 'package:e_commerce_front_end/features/shared/providers/router_provider.dart';
import 'package:e_commerce_front_end/features/theme/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

class OrderItem extends ConsumerWidget {
  const OrderItem({
    super.key,
    required this.order,
  });
  final Order order;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return GestureDetector(
      onTap: () {
        if (order.id != null) {
          ref.read(routerProvider).push(OrderDetailRoute(id: order.id!));
        }
      },
      child: Row(
        children: [
          Expanded(
            flex: 5,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    order.products.nameAndCount(),
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                    style: GoogleFonts.poppins(
                      fontSize: 17,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const Gap(2),
                  Text(
                    order.created_at.format(),
                    style: GoogleFonts.poppins(
                      color: AppColor.black,
                      fontSize: 14,
                    ),
                  ),
                  const Gap(10),
                  Row(
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Price',
                              style: GoogleFonts.poppins(
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            Text(order.total.toRupee()),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Products',
                              style: GoogleFonts.poppins(
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            Text('${order.products?.length ?? 0}'),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: OrderImage(products: order.products ?? []),
          ),
        ],
      ),
    );
  }
}
