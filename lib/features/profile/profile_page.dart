import 'package:auto_route/auto_route.dart';
import 'package:e_commerce_front_end/features/home/ui/components/home_app_bar.dart';
import 'package:e_commerce_front_end/features/profile/provider/profile_provider.dart';
import 'package:e_commerce_front_end/features/routes/router/app_router.gr.dart';
import 'package:e_commerce_front_end/features/shared/providers/router_provider.dart';
import 'package:e_commerce_front_end/features/shared/providers/user_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';

@RoutePage()
class ProfilePage extends ConsumerStatefulWidget {
  const ProfilePage({super.key});

  @override
  ConsumerState<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends ConsumerState<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    final user = ref.watch(userNotifierProvider);
    final router = ref.watch(routerProvider);
    // final notifier = ref.watch(profileNotifierProvider.notifier);
    return Scaffold(
      appBar: const HomeAppBar(
        title: 'ACCOUNT',
      ),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          Column(
            children: [
              ListTile(
                onTap: () {},
                minLeadingWidth: 0,
                title: const Text(
                  'Profile',
                ),
              ),
              const ListTile(
                minLeadingWidth: 0,
                title: Text(
                  'Orders',
                ),
              ),
              ListTile(
                onTap: () => router.push(const AddressListRoute()),
                minLeadingWidth: 0,
                title: const Text(
                  'Address',
                ),
              ),
              const ListTile(
                minLeadingWidth: 0,
                title: Text(
                  'Support & Help',
                ),
              ),
              ListTile(
                minLeadingWidth: 0,
                onTap: () {
                  ref.read(profileNotifierProvider.notifier).logout();
                },
                title: const Text(
                  'Logout',
                  style: TextStyle(color: Colors.red),
                ),
              ),
            ],
          ),
          const Gap(20),
        ],
      ),
    );
  }
}
