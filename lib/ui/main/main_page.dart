import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../routes/router/app_router.gr.dart';
import 'components/bottom_nav_bar.dart';

class MainPage extends ConsumerStatefulWidget {
  const MainPage({super.key});

  @override
  ConsumerState<MainPage> createState() => _MainPageState();
}

class _MainPageState extends ConsumerState<MainPage> {
  @override
  Widget build(BuildContext context) {
    final navItems = ref.watch(navItemProvider);
    return SafeArea(
      top: false,
      child: AutoTabsScaffold(
        routes: const [
          HomeRoute(),
          SearchRoute(),
          OrderRoute(),
          ProfileRoute(),
        ],
        bottomNavigationBuilder: (_, tabsRouter) {
          return SizedBox(
            height: 65,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: List.generate(
                navItems.length,
                (index) => NavItem(
                  onTap: () => tabsRouter.setActiveIndex(index),
                  nav: navItems[index],
                  selected: tabsRouter.activeIndex == index,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
