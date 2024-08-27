import 'package:algolia_insights/algolia_insights.dart';
import 'package:mithzar/core/extensions/log.dart';
import 'package:mithzar/src/shared/providers/user_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'algolio_event.g.dart';

enum AlgolioEventType {
  view,
  clicked,
}

@Riverpod(keepAlive: true)
class AlgolioEvent extends _$AlgolioEvent {
  @override
  void build() {
    return;
  }

  void emit({
    required AlgolioEventType type,
    required List<String> ids,
  }) {
    final insights = Insights(
      applicationID: const String.fromEnvironment('alogliaApplicationID'),
      apiKey: const String.fromEnvironment('alogliaApiKey'),
    );
    insights.userToken = ref.watch(userNotifierProvider).id.toString();
    insights.logError();
    return switch (type) {
      AlgolioEventType.view => insights.viewedObjects(
          indexName: 'product_index',
          eventName: 'Viewed Item',
          objectIDs: ids,
        ),
      AlgolioEventType.clicked => insights.clickedObjects(
          indexName: 'product_index',
          eventName: 'Clicked Item',
          objectIDs: ids,
        ),
    };
  }
}
