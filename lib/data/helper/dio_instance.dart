import 'package:dio/adapter.dart';
import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../extensions/log.dart';
import '../../extensions/nullable.dart';
import '../local/shar_pref.dart';
import '../model/api_res.dart';
import 'api_path.dart';
import 'app_error.dart';

class DioInstance with DioMixin implements Dio {
  DioInstance(this._ref) {
    final options = BaseOptions(
      baseUrl: ApiPath.baseUrl,
      contentType: 'application/json',
    );
    this.options = options;
    httpClientAdapter = DefaultHttpClientAdapter();
    _setUpInterceptor();
  }

  final Ref _ref;

  Future<void> _setUpInterceptor() async {
    // TODO(Kisan): Add Refresh Token
    _ref.read(sharPrefProvider);
    final interceptor = InterceptorsWrapper(
      onRequest: (options, handler) {
        '------------------------'.logInfo();
        'Requesting ${options.path}'.logInfo();
        'Requesting ${options.data}'.logInfo();
        '------------------------'.logInfo();
        handler.next(options);
      },
      onResponse: (res, handler) {
        '\n------------------------'.logSuccess();
        'Response ${res.statusCode}'.logSuccess();
        'Response Data ${res.data}'.logSuccess();
        '------------------------'.logSuccess();
        final apiRes = ApiRes.fromJson(res.data);
        if (!(apiRes.success ?? false) || apiRes.errors.isNotNullOrEmpty) {
          handler.reject(
            DioError(
              requestOptions: res.requestOptions,
              error: AppError(
                message:
                    apiRes.errors?.map((elem) => elem.message).join('\n') ?? '',
                type: ErrorType.responseError,
              ),
            ),
          );
          return;
        }
        res.data = apiRes.data;
        handler.next(res);
      },
      onError: (e, handler) {
        'Api Error : ${e.message}'.logError();
        final error = AppError(
          type: ErrorType.network,
          message: 'Please check your internet connection or try again later',
        );
        handler.next(
          DioError(
            requestOptions: e.requestOptions,
            error: error,
          ),
        );
      },
    );
    interceptors.add(interceptor);
  }
}
