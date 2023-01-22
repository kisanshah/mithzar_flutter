import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

import '../data/helper/app_error.dart';

extension FutureExtension on Future {
  Future<Either<AppError, T>> guardFuture<T>() async {
    try {
      final res = await this;
      return right(res);
    } on Exception catch (e) {
      var error =
          AppError(type: ErrorType.other, message: 'Something went wrong!');
      if (e is DioError) {
        error = e.error;
      }
      return left(error);
    }
  }
}
