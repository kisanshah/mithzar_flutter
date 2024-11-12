import 'package:api/api.dart';
import 'package:mithzar/core/extensions/future.dart';
import 'package:mithzar/core/instances/api_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'section_provider.g.dart';

@riverpod
Future<List<Section>> section(SectionRef ref) {
  final api = ref.read(apiProvider).getSectionApi();
  return api.getSections().guard();
}
