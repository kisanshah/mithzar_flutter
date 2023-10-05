import 'package:dio/dio.dart';
import 'package:e_commerce_front_end/core/instances/dio_instance.dart';
import 'package:e_commerce_front_end/core/instances/token_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final dioProvider = Provider<Dio>((ref) {
  final token = ref.watch(tokenNotifierProvider);
  return DioInstance(ref, token);
});
