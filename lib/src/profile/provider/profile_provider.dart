import 'package:mithzar/core/instances/shar_pref.dart';
import 'package:mithzar/src/routes/router/app_router.gr.dart';
import 'package:mithzar/src/shared/providers/router_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'profile_provider.g.dart';

@riverpod
class ProfileNotifier extends _$ProfileNotifier {
  @override
  int build() {
    return 0;
  }

  void logout() {
    ref.read(sharPrefProvider).clearAll();
    ref.read(routerProvider).replaceAll([const SignInRoute()]);
  }
}
