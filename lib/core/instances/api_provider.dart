import 'package:api/api.dart' as swagger;
import 'package:mithzar/src/shared/providers/dio_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'api_provider.g.dart';

@Riverpod(keepAlive: true)
swagger.Api api(ApiRef ref) {
  final dio = ref.watch(dioProvider);
  return swagger.Api(dio: dio);
}
