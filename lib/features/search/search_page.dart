import 'package:auto_route/auto_route.dart';
import 'package:e_commerce_front_end/features/home/ui/components/home_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

@RoutePage()
class SearchPage extends ConsumerStatefulWidget {
  const SearchPage({super.key});

  @override
  ConsumerState<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends ConsumerState<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: HomeAppBar(
        title: 'SEARCH',
      ),
    );
  }
}
