import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mithzar/core/extensions/async_value.dart';
import 'package:mithzar/features/address/ui/components/address_item.dart';
import 'package:mithzar/features/address/ui/providers/address_list_provider.dart';
import 'package:mithzar/features/components/custom_app_bar.dart';

@RoutePage()
class AddressPage extends HookConsumerWidget {
  const AddressPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(addressListProvider);
    return Scaffold(
      appBar: const CustomAppBar(title: 'ADDRESS'),
      body: state.unfold(
        (addresses) => ListView.separated(
          padding: const EdgeInsets.all(20),
          itemBuilder: (context, index) {
            return AddressItem(address: addresses[index]);
          },
          itemCount: addresses.length,
          separatorBuilder: (context, index) => const Gap(5),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
    );
  }
}
