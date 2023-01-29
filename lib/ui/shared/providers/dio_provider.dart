import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../data/helper/dio_instance.dart';
import 'token_provider.dart';

final dioProvider = Provider<Dio>((ref) {
  ref.watch(tokenProvider);
  return DioInstance(ref);
});
