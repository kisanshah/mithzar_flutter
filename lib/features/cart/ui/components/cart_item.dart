import 'package:api/api.dart';
import 'package:e_commerce_front_end/core/extensions/num.dart';
import 'package:e_commerce_front_end/features/components/app_image.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class CartItem extends StatelessWidget {
  const CartItem({
    super.key,
    required this.item,
  });
  final Cart item;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: IntrinsicHeight(
        child: Row(
          children: [
            Expanded(
              flex: 8,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    item.product?.name ?? '',
                    style: const TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Text(
                    item.product?.description ?? '',
                    maxLines: 2,
                    style: const TextStyle(
                      overflow: TextOverflow.ellipsis,
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                      color: Colors.grey,
                    ),
                  ),
                  const Gap(5),
                  Text(
                    item.product?.price?.toRupee() ?? '',
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ),
            const Gap(10),
            Expanded(
              flex: 3,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  if (item.product?.thumbnail?.url != null)
                    AppImage(
                      url: item.product?.thumbnail?.url ?? '',
                    ),
                  Container(
                    decoration: const BoxDecoration(
                        // border: Border.all(),
                        ),
                    padding: const EdgeInsets.symmetric(
                      // horizontal: 5,
                      vertical: 10,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        OutlinedButton(
                          onPressed: () {},
                          style: OutlinedButton.styleFrom(
                            padding: EdgeInsets.zero,
                            minimumSize: const Size(25, 25),
                            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                          ),
                          child: const Text(
                            '-',
                            style: TextStyle(
                              fontSize: 14,
                            ),
                          ),
                        ),
                        Text(
                          '${item.quantity}'.padLeft(2, '0'),
                          style: const TextStyle(
                            fontSize: 14,
                          ),
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            padding: EdgeInsets.zero,
                            minimumSize: const Size(25, 25),
                            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                          ),
                          onPressed: () {},
                          child: const Text(
                            '+',
                            style: TextStyle(
                              fontSize: 14,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
