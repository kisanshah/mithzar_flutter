import 'package:algolia_helper_flutter/algolia_helper_flutter.dart';
import 'package:api/api.dart';
import 'package:mithzar/features/shared/state/user_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'search_provider.g.dart';

@riverpod
class SearchNotifier extends _$SearchNotifier {
  final searcher = HitsSearcher(
    applicationID: '',
    apiKey: '',
    indexName: '',
    debounce: Duration.zero,
  );

  @override
  State<List<Product>> build() {
    observer();
    return LoadingState();
  }

  void search(String? query) {
    searcher.query(query ?? '');
  }

  void observer() {
    searcher.responses.listen((event) {
      state = ResultState(
        data: event.hits.map((e) => Product.fromJson(e)).toList(),
      );
    });
  }
}
