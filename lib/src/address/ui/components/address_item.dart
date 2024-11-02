import 'package:api/api.dart' as api;
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import 'package:mithzar/core/extensions/model.dart';
import 'package:mithzar/src/address/providers/address_provider.dart';

class AddressItem extends ConsumerWidget {
  const AddressItem({
    super.key,
    required this.address,
  });
  final api.Address address;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final notifier = ref.read(addressProvider.notifier);
    return Card(
      elevation: 0.1,
      child: Container(
        decoration: BoxDecoration(border: Border.all()),
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
            if (address.primary == false)
              TextButton(
                onPressed: () {
                  notifier.setDefault(address);
                },
                child: const Text('Make Default'),
              ),
            const Gap(5),
            Text(address.formatted),
          ],
        ),
      ),
    );
  }
}
