import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mithzar/core/instances/dio_instance.dart';
import 'package:mithzar/core/instances/token_provider.dart';

final dioProvider = Provider<Dio>((ref) {
  final token = ref.watch(tokenProvider);
  return DioInstance(ref, token);
});
