import 'package:api/api.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mithzar/core/instances/token_provider.dart';
import 'package:mithzar/core/interceptors/error_interceptor.dart';
import 'package:mithzar/core/interceptors/logging_interceptor.dart';
import 'package:mithzar/src/profile/provider/profile_provider.dart';

class AuthInterceptor implements InterceptorsWrapper {
  AuthInterceptor(this._ref);
  final Ref _ref;

  @override
  Future<void> onError(err, handler) async {
    if (err.response?.data is! Map) {
      handler.next(err);
      return;
    }
    //Check Authentication Errors
    final res = ErrorResponse.fromJson(err.response?.data);
    if (res.message == 'TOKEN_EXPIRED') {
      // Generate new token
      final token = await _ref.read(tokenProvider.notifier).refresh();
      //Retry request
      final dio = Dio()
        ..interceptors.addAll([
          ErrorInterceptor(),
          if (kDebugMode) LoggingInterceptor(),
        ]);
      final response = await dio.fetch(
        err.requestOptions.copyWith(
          headers: {
            ...err.requestOptions.headers,
            'Authorization': 'Bearer $token',
          },
        ),
      );
      handler.resolve(response);
    } else if (res.message == 'SESSION_EXPIRED') {
      _ref.read(profileNotifierProvider.notifier).logout();
    } else {
      handler.next(err);
    }
  }

  @override
  void onRequest(options, handler) => handler.next(options);

  @override
  void onResponse(response, handler) => handler.next(response);
}
