import 'package:dio/dio.dart';
import 'package:mithzar/core/extensions/log.dart';

class ErrorInterceptor implements InterceptorsWrapper {
  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    '${err.response?.data}'.logError();
    handler.next(err);
  }

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    handler.next(options);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) =>
      handler.next(response);
}
