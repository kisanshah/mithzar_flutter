import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';

import '../theme/app_color.dart';

@RoutePage()
class ProfilePage extends ConsumerStatefulWidget {
  const ProfilePage({super.key});

  @override
  ConsumerState<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends ConsumerState<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    // final state = ref.watch(profileNotifierProvider);
    // final router = ref.watch(routerProvider);
    // final notifier = ref.watch(profileNotifierProvider.notifier);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Account'),
        // toolbarHeight: 0,
        elevation: 0,
      ),
      backgroundColor: Colors.red,
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          Container(
            padding: const EdgeInsets.all(10),
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(10)),
              boxShadow: [
                BoxShadow(
                  offset: Offset(-10, 10),
                  color: AppColor.accentColor,
                ),
              ],
            ),
            child: Column(
              children: [
                const ListTile(
                  minLeadingWidth: 0,
                  title: Text(
                    'Profile',
                  ),
                  shape: RoundedRectangleBorder(
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
                const ListTile(
                  minLeadingWidth: 0,
                  title: Text(
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
