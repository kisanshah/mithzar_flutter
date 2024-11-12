import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mithzar/src/shared/keys/keys.dart';
import 'package:mithzar/src/shared/providers/router_provider.dart';
import 'package:mithzar/src/theme/app_theme.dart';

class App extends ConsumerWidget {
  const App({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final router = ref.watch(routerProvider);
    final theme = AppTheme(context);
    return MaterialApp.router(
      scaffoldMessengerKey: scaffoldMessengerKey,
      title: 'Flutter Demo',
      theme: theme.light,
      darkTheme: theme.dark,
      builder: (context, child) {
        return Container(
          color: Colors.white,
          child: SafeArea(
            top: false,
            child: child!,
          ),
        );
      },
      debugShowCheckedModeBanner: false,
      routerDelegate: router.delegate(),
      routeInformationParser: router.defaultRouteParser(),
    );
  }
}
