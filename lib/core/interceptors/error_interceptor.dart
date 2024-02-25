import 'package:dio/dio.dart';
import 'package:mithzar/core/extensions/log.dart';
import 'package:mithzar/data/helper/app_error.dart';

class ErrorInterceptor implements InterceptorsWrapper {
  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    '${err.response?.data}'.logError();
    // {name: UnauthorizedError, message: Invalid Credentials}
    final error = switch (err.response?.data) {
      {'name': final String _, 'message': final String message} =>
        AppError(type: ErrorType.responseError, message: message),
      _ => AppError(type: ErrorType.other, message: 'Something went wrong!'),
    };
    handler.next(err.copyWith(error: error));
  }

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    handler.next(options);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) =>
      handler.next(response);
}
