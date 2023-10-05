import 'package:api/api.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../ui/shared/providers/dio_provider.dart';

part 'api_client_provider.g.dart';

@Riverpod(keepAlive: true)
Api apiClient(ApiClientRef ref) {
  final dio = ref.watch(dioProvider);
  return Api(dio: dio);
}
