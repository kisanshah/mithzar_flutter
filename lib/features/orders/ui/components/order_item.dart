import 'package:api/api.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import 'package:mithzar/core/extensions/datetime.dart';
import 'package:mithzar/core/extensions/num.dart';
import 'package:mithzar/core/extensions/product.dart';
import 'package:mithzar/core/extensions/string.dart';
import 'package:mithzar/features/routes/router/app_router.gr.dart';
import 'package:mithzar/features/shared/providers/router_provider.dart';

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
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            order.items.nameAndCount(),
            overflow: TextOverflow.ellipsis,
            maxLines: 2,
          ),
          const Gap(2),
          Text(
            order.createdAt.format(),
          ),
          const Gap(10),
          Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Status',
                    ),
                    Text(
                      order.status.toTitleCase(),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Products',
                    ),
                    Text(
                      '${order.items?.length ?? 0}',
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Price',
                    ),
                    Text(
                      order.total.toRupee(),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
