import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mithzar/features/routes/router/app_router.dart';

final routerProvider = Provider<AppRouter>((ref) {
  return AppRouter(ref);
});
