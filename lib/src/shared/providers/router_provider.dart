import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mithzar/src/routes/router/app_router.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'router_provider.g.dart';

@Riverpod(keepAlive: true)
AppRouter router(Ref ref) {
  return AppRouter(ref);
}
