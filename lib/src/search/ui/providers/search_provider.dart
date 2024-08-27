import 'package:algolia_helper_flutter/algolia_helper_flutter.dart';
import 'package:api/api.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'search_provider.g.dart';

@riverpod
class SearchNotifier extends _$SearchNotifier {
  final searcher = HitsSearcher.create(
    applicationID: const String.fromEnvironment('alogliaApplicationID'),
    apiKey: const String.fromEnvironment('alogliaApiKey'),
    state: const SearchState(
      indexName: 'product_index',
      hitsPerPage: 5,
    ),
  );

  @override
  List<Product> build() {
    observer();
    return [];
  }

  void search(String? query) {
    if (query?.isNotEmpty ?? false) {
      searcher.query(query ?? '');
    }
  }

  void observer() {
    searcher.responses.listen((event) {
      // state = ResultState(
      //   data: event.hits.map((e) => Product.fromJson(e)).toList(),
      // );
    });
  }
}
