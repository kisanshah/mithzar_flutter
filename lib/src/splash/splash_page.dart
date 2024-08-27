import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mithzar/core/extensions/context.dart';
import 'package:mithzar/core/instances/token_provider.dart';
import 'package:mithzar/src/routes/router/app_router.gr.dart';
import 'package:mithzar/src/shared/providers/router_provider.dart';

@RoutePage()
class SplashPage extends ConsumerStatefulWidget {
  const SplashPage({super.key});

  @override
  ConsumerState<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends ConsumerState<SplashPage>
    with SingleTickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
    navigate();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(toolbarHeight: 0),
      body: Center(
        child: Text(
          'MITHZAR',
          textAlign: TextAlign.center,
          style: context.text.regular18,
        ),
      ),
    );
  }

  Future<void> navigate() async {
    await Future.delayed(const Duration(seconds: 2));
    ref.read(tokenNotifierProvider.notifier).init();
    final router = ref.watch(routerProvider);
    router.replace(const MainRoute());
  }
}
