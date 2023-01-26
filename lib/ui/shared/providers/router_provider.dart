import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../routes/guards/auth.dart';
import '../../routes/router/app_router.gr.dart';

final routerProvider = Provider<AppRouter>((ref) {
  return AppRouter(authGuard: AuthGuard(ref));
});
