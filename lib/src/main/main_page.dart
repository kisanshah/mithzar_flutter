import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mithzar/src/home/ui/components/home_app_bar.dart';
import 'package:mithzar/src/main/components/bottom_nav_bar.dart';
import 'package:mithzar/src/routes/router/app_router.gr.dart';
import 'package:mithzar/src/utils/app_const.dart';

@RoutePage()
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
        scaffoldKey: scaffoldKey,
        appBarBuilder: (context, tabsRouter) => const HomeAppBar(
          title: 'MITHZAR',
        ),
        routes: const [
          HomeRoute(),
          AddressRoute(),
          SearchRoute(),
          OrderRoute(),
          ProfileRoute(),
        ],
        bottomNavigationBuilder: (_, tabsRouter) {
          return Container(
            decoration: const BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.black26,
                  offset: Offset(0, -1),
                  blurStyle: BlurStyle.outer,
                  blurRadius: 1,
                ),
              ],
            ),
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
