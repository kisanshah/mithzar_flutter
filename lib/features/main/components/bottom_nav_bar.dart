import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import 'package:mithzar/features/theme/app_color.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

class NavData {
  NavData({
    required this.title,
    required this.icon,
  });

  final String title;
  final IconData icon;
}

final navItemProvider = Provider<List<NavData>>((ref) {
  return [
    NavData(
      title: 'Home',
      icon: PhosphorIconsRegular.house,
    ),
    NavData(
      title: 'Search',
      icon: PhosphorIconsRegular.magnifyingGlass,
    ),
    NavData(
      title: 'Order',
      icon: PhosphorIconsRegular.package,
    ),
    NavData(
      title: 'Profile',
      icon: PhosphorIconsRegular.user,
    ),
  ];
});

class NavItem extends StatelessWidget {
  const NavItem({
    super.key,
    required this.onTap,
    required this.nav,
    required this.selected,
  });
  final NavData nav;
  final VoidCallback onTap;
  final bool selected;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
        onTap: onTap,
        child: Column(
          children: [
            const Gap(10),
            Icon(
              nav.icon,
              color: selected ? AppColor.accentColor : Colors.grey,
            ),
            const Gap(5),
            Text(
              nav.title,
              style: TextStyle(
                color: selected ? AppColor.accentColor : Colors.grey,
                fontSize: 12,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
