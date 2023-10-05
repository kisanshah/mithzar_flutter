import 'package:api/api.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../data/helper/api_path.dart';
import '../interceptors/auth_interceptor.dart';
import '../interceptors/error_interceptor.dart';
import '../interceptors/logging_interceptor.dart';

class DioInstance with DioMixin implements Dio {
  DioInstance(this._ref, this.token) {
    options = BaseOptions(
      baseUrl: ApiPath.baseUrl,
      contentType: 'application/json',
      headers: {
        'Authorization': 'Bearer ${token.accessToken}',
      },
    );
    httpClientAdapter = HttpClientAdapter();
    _setUpInterceptor();
  }

  final Ref _ref;
  final Tokens token;

  Future<void> _setUpInterceptor() async {
    interceptors.addAll([
      ErrorInterceptor(),
      if (kDebugMode) LoggingInterceptor(),
      AuthInterceptor(_ref),
    ]);
  }
}
