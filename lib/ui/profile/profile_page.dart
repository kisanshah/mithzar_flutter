import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../routes/router/app_router.gr.dart';
import '../shared/providers/router_provider.dart';
import 'provider/profile_provider.dart';

class ProfilePage extends ConsumerStatefulWidget {
  const ProfilePage({super.key});

  @override
  ConsumerState<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends ConsumerState<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    final state = ref.watch(profileNotifierProvider);
    final router = ref.watch(routerProvider);
    final notifier = ref.watch(profileNotifierProvider.notifier);
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 0,
        elevation: 0,
      ),
      body: Center(
        child: TextButton(
          onPressed: () {
            notifier.logout();
            router.replace(const MainRoute());
          },
          child: const Text('LOGOUT'),
        ),
      ),
    );
  }
}
