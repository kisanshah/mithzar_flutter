import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../data/model/api_res.dart';
import '../../ui/profile/provider/profile_provider.dart';
import '../instances/token_provider.dart';
import 'error_interceptor.dart';
import 'logging_interceptor.dart';

class AuthInterceptor implements InterceptorsWrapper {
  AuthInterceptor(this._ref);
  final Ref _ref;

  @override
  Future<void> onError(err, handler) async {
    //Check Authentication Errors
    final res = ApiRes.fromJson(err.response?.data);
    if (res.message == 'TOKEN_EXPIRED') {
      // Generate new token
      final token = await _ref.read(tokenNotifierProvider.notifier).refresh();
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
