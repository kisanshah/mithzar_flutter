import 'package:api/api.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import 'package:mithzar/core/extensions/model.dart';

class AddressItem extends ConsumerWidget {
  const AddressItem({
    super.key,
    required this.address,
  });
  final Address address;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Card(
      elevation: 0.1,
      child: Container(
        decoration: const BoxDecoration(
            // border: Border.all(),
            ),
        padding: const EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (address.primary ?? false)
              const Row(
                children: [
                  Text('My House'),
                  Gap(10),
                  Chip(
                    label: Text(
                      'Primary',
                      style: TextStyle(fontSize: 12),
                    ),
                    padding: EdgeInsets.zero,
                    materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  ),
                ],
              ),
            const Gap(5),
            Text(address.formatted),
          ],
        ),
      ),
    );
  }
}
