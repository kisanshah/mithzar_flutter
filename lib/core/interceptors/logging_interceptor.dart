import 'package:dio/dio.dart';
import 'package:e_commerce_front_end/core/extensions/log.dart';

class LoggingInterceptor implements InterceptorsWrapper {
  @override
  Future<void> onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    'x------------------------------'.logInfo();
    'Requesting : ${options.baseUrl}${options.path.replaceFirst("/", "")}'
        .logInfo();
    'Data : ${options.data}'.logInfo();
    await Future.delayed(const Duration(milliseconds: 20));
    '------------------------------x'.logInfo();

    handler.next(options);
  }

  @override
  Future<void> onResponse(
    Response response,
    ResponseInterceptorHandler handler,
  ) async {
    'x------------------------------'.logSuccess();
    'Response : ${response.extra}'.logSuccess();
    'Response : ${response.data}'.logSuccess();
    'Status : ${response.statusCode} - ${response.statusMessage}'.logSuccess();
    await Future.delayed(const Duration(milliseconds: 20));
    '------------------------------x'.logSuccess();
    handler.next(response);
  }

  @override
  Future<void> onError(
    DioException err,
    ErrorInterceptorHandler handler,
  ) async {
    'x------------------------------'.logError();
    'Error : ${err.message}'.logError();
    'Response : ${err.response?.statusCode} - ${err.response?.statusMessage} \n${err.response?.data}'
        .logError();

    await Future.delayed(const Duration(milliseconds: 20));
    '------------------------------x'.logError();
    handler.next(err);
  }
}
