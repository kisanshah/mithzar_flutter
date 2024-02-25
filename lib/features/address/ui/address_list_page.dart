import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import 'package:mithzar/features/address/ui/components/address_item.dart';
import 'package:mithzar/features/address/ui/providers/address_list_provider.dart';
import 'package:mithzar/features/components/custom_app_bar.dart';
import 'package:mithzar/features/shared/state/user_state.dart';

@RoutePage()
class AddressListPage extends ConsumerStatefulWidget {
  const AddressListPage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _AddressListPageState();
}

class _AddressListPageState extends ConsumerState<AddressListPage> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      ref.read(addressListNotifierProvider.notifier).fetch();
    });
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(addressListNotifierProvider);
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
