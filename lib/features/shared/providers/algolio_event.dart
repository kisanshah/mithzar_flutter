import 'package:algolia_insights/algolia_insights.dart';
import 'package:mithzar/features/shared/providers/user_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'algolio_event.g.dart';

@Riverpod(keepAlive: true)
class AlgolioEvent extends _$AlgolioEvent {
  final insights = Insights(
    applicationID: const String.fromEnvironment('alogliaApplicationID'),
    apiKey: const String.fromEnvironment('alogliaApiKey'),
  );

  @override
  void build() {
    insights.userToken = ref.watch(userNotifierProvider).id ?? '';
    return;
  }

  void emit({
    required List<String> ids,
  }) {
    insights.viewedObjects(
      indexName: 'product_index',
      eventName: 'Viewed Item',
      objectIDs: ids,
    );
  }
}
