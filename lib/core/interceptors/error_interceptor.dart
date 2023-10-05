import 'package:dio/dio.dart';

import '../../data/model/api_res.dart';

class ErrorInterceptor implements InterceptorsWrapper {
  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    handler.next(err);
  }

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    handler.next(options);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    final res = ApiRes.fromJson(response.data);
    response.data = res.data;
    return handler.next(response);
  }
}
