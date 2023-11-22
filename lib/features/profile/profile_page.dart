import 'package:auto_route/auto_route.dart';
import 'package:e_commerce_front_end/features/home/ui/components/home_app_bar.dart';
import 'package:e_commerce_front_end/features/profile/provider/profile_provider.dart';
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
    // final router = ref.watch(routerProvider);
    // final notifier = ref.watch(profileNotifierProvider.notifier);
    return Scaffold(
      appBar: const HomeAppBar(
        title: 'ACCOUNT',
      ),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          Container(
            padding: const EdgeInsets.all(10),
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(10)),
            ),
            child: Column(
              children: [
                ListTile(
                  onTap: () {},
                  minLeadingWidth: 0,
                  title: const Text(
                    'Profile',
                  ),
                  shape: const RoundedRectangleBorder(
                    side: BorderSide(width: 0),
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                ),
                const ListTile(
                  minLeadingWidth: 0,
                  title: Text(
                    'Orders',
                  ),
                  shape: RoundedRectangleBorder(
                    side: BorderSide(width: 0),
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                ),
                const ListTile(
                  minLeadingWidth: 0,
                  title: Text(
                    'Address',
                  ),
                  shape: RoundedRectangleBorder(
                    side: BorderSide(width: 0),
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                ),
                const ListTile(
                  minLeadingWidth: 0,
                  title: Text(
                    'Support & Help',
                  ),
                  shape: RoundedRectangleBorder(
                    side: BorderSide(width: 0),
                    borderRadius: BorderRadius.all(Radius.circular(10)),
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
                ...List.generate(
                  0,
                  (index) => const ListTile(
                    minLeadingWidth: 0,
                    title: Text(
                      'Address',
                    ),
                    shape: RoundedRectangleBorder(
                      side: BorderSide(width: 0),
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const Gap(20),
        ],
      ),
    );
  }
}
