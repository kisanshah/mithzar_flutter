import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

import '../data/helper/app_error.dart';

extension FutureExtension on Future {
  Future<Either<AppError, T>> guardFuture<T>() async {
    try {
      final res = await this;
      if (res is Response<T>) {
        return right(res.data as T);
      }
      return right(res);
    } on Exception catch (e) {
      final error =
          AppError(type: ErrorType.other, message: 'Something went wrong!');
      if (e is DioException) {
        // error = e.error;
      }
      return left(error);
    }
  }
}
