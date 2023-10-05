import 'package:e_commerce_front_end/features/routes/router/app_router.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final routerProvider = Provider<AppRouter>((ref) {
  return AppRouter(ref);
});
