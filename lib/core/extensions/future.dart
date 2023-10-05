// ignore: depend_on_referenced_packages
import 'package:built_collection/built_collection.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:e_commerce_front_end/data/helper/app_error.dart';

extension FutureExtension on Future {
  Future<Either<AppError, T>> guardFuture<T>() async {
    try {
      final res = await this;
      if (res is Response<BuiltList>) {
        return right(res.data?.asList() as T);
      }
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
