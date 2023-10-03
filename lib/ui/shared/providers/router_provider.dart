import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../routes/router/app_router.dart';

final routerProvider = Provider<AppRouter>((ref) {
  return AppRouter(ref);
});
