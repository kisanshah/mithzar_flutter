import 'package:mithzar/src/product/providers/section_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'home_provider.g.dart';

@riverpod
class Home extends _$Home {
  @override
  Future<void> build() async {
    return;
  }

  Future<void> fetch() async {
    await Future.wait([
      ref.read(sectionProvider.future),
      // ref.read(variantListProvider.notifier).fetch(),
    ]);
  }
}
