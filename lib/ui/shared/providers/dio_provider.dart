import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../data/helper/dio_instance.dart';

final dioProvider = Provider<Dio>((ref) {
  return DioInstance(ref);
});
