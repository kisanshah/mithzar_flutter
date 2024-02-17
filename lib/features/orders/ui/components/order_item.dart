import 'package:api/api.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mithzar/core/extensions/datetime.dart';
import 'package:mithzar/core/extensions/num.dart';
import 'package:mithzar/core/extensions/product.dart';
import 'package:mithzar/features/routes/router/app_router.gr.dart';
import 'package:mithzar/features/shared/providers/router_provider.dart';
import 'package:mithzar/features/theme/app_color.dart';

class OrderItem extends ConsumerWidget {
  const OrderItem({
    super.key,
    required this.order,
  });
  final Order order;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return InkWell(
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      onTap: () {
        if (order.id != null) {
          ref.read(routerProvider).push(OrderDetailRoute(id: order.id!));
        }
      },
      child: Row(
        children: [
          Flexible(
            flex: 3,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    order.items.nameAndCount(),
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                    style: GoogleFonts.poppins(
                      fontSize: 17,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const Gap(2),
                  Text(
                    order.createdAt.format(),
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
                              'Status',
                              style: GoogleFonts.poppins(
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            Text(
                              order.status?.toUpperCase() ?? '',
                              style: GoogleFonts.poppins(
                                color: AppColor.red,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ),
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
                            Text('${order.items?.length ?? 0}'),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          // FIXME(Kisan): variant after statemanagement
          // Expanded(
          //   child: OrderImage(products: order.items ?? []),
          // ),
        ],
      ),
    );
  }
}
