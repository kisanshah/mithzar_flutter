import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../data/local/shar_pref.dart';

part 'profile_provider.g.dart';

@riverpod
class ProfileNotifier extends _$ProfileNotifier {
  @override
  int build() {
    return 0;
  }

  void logout() {
    ref.read(sharPrefProvider).clearAll();
  }
}
