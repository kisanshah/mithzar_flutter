import 'package:auto_route/auto_route.dart';
import 'package:e_commerce_front_end/features/components/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

@RoutePage()
class AddressListPage extends ConsumerStatefulWidget {
  const AddressListPage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _AddressListPageState();
}

class _AddressListPageState extends ConsumerState<AddressListPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: 'Address'),
      body: Center(
        child: TextButton(
          onPressed: () {},
          child: const Text('Add'),
        ),
      ),
    );
  }
}
