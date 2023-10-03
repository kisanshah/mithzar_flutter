import 'package:flutterClient/api.dart';
import 'package:http_interceptor/http_interceptor.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../extensions/log.dart';

part 'api_client_provider.g.dart';

@Riverpod(keepAlive: true)
ApiClient apiClient(ApiClientRef ref) {
  final client = InterceptedClient.build(
    interceptors: [
      LoggingInterceptor(),
    ],
  );
  return ApiClient()..client = client;
}

class LoggingInterceptor implements InterceptorContract {
  @override
  Future<RequestData> interceptRequest({required RequestData data}) async {
    '<--------------------------------'.logInfo();
    data.baseUrl.logInfo();
    return data;
  }

  @override
  Future<ResponseData> interceptResponse({required ResponseData data}) async {
    data.body.logInfo();
    '-------------------------------->'.logInfo();
    return data;
  }
}
