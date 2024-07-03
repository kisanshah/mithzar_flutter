import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import 'package:mithzar/core/extensions/context.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

class NavData {
  NavData({
    required this.title,
    required this.icon,
  });

  final String title;
  final PhosphorIconData Function([PhosphorIconsStyle]) icon;
}

final navItemProvider = Provider<List<NavData>>((ref) {
  return [
    NavData(
      title: 'Home',
      icon: PhosphorIcons.house,
    ),
    NavData(
      title: 'Search',
      icon: PhosphorIcons.magnifyingGlass,
    ),
    NavData(
      title: 'Order',
      icon: PhosphorIcons.package,
    ),
    NavData(
      title: 'Profile',
      icon: PhosphorIcons.user,
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
              nav.icon(
                selected ? PhosphorIconsStyle.fill : PhosphorIconsStyle.regular,
              ),
              size: 25,
            ),
            const Gap(5),
            Text(
              nav.title,
              style: context.text.regular12,
            ),
          ],
        ),
      ),
    );
  }
}
