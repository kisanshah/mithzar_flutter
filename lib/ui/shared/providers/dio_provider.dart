import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/instances/dio_instance.dart';
import '../../../core/instances/token_provider.dart';

final dioProvider = Provider<Dio>((ref) {
  final token = ref.watch(tokenNotifierProvider);
  return DioInstance(ref, token);
});
