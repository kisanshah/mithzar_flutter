// ignore: depend_on_referenced_packages
import 'package:built_collection/built_collection.dart';
import 'package:dio/dio.dart';
import 'package:mithzar/core/extensions/log.dart';
import 'package:mithzar/data/helper/app_error.dart';
import 'package:mithzar/features/shared/state/pagination_state.dart';
import 'package:mithzar/features/shared/state/user_state.dart';

extension FutureExtension on Future {
  Future<(T?, AppError?)> toRecord<T>() async {
    try {
      final res = await this;
      if (res is Response<BuiltList>) {
        return (res.data?.asList() as T, null);
      }
      if (res is Response<T>) {
        if (res.data is! T) {
          throw AppError(type: ErrorType.parsing, message: 'Invalid Casting');
        }
        return (res.data as T, null);
      }
      return (res as T, null);
    } on Exception catch (e) {
      var error =
          AppError(type: ErrorType.other, message: 'Something went wrong!');
      if (e is DioException) {
        if (e.error is AppError) {
          error = e.error! as AppError;
        }
      }
      return (null, error);
    }
  }

  Future<T> guard<T>() async {
    try {
      final res = await this;

      if (res is Response<BuiltList>) {
        return res.data?.asList() as T;
      }
      if (res is Response<T> && res.data is T) {
        return res.data as T;
      }
      return res as T;
    } on Exception catch (e) {
      e.logError();
      var error =
          AppError(type: ErrorType.other, message: 'Something went wrong!');
      if (e is DioException) {
        if (e.error is AppError) {
          error = e.error! as AppError;
        }
      }
      throw error;
    }
  }
}

extension Typing<T extends Iterable> on Iterable<T> {
  Type get genericType => T;
}

extension RecordListExt<T> on (List<T>?, AppError?) {
  PaginationState<List<T>> pagination(PaginationState<List<T>> state) {
    final (data, error) = this;
    if (data != null) {
      return PaginationResult(
        items: [...?state.items, ...data],
        more: data.length == state.filter?.size,
        // FIXME(Kisan): fix copyWith
        filter: state.filter,
        // filter: state.filter.copyWith(
        //   page: (state.filter.page ?? 0) + 1,
        // ),
      );
    }
    if (error != null) {
      return PaginationError(message: '');
    }
    return PaginationResult(
      items: [...?state.items, ...?data],
      more: data?.length == state.filter?.size,
      filter: state.filter,
    );
  }
}

extension RecordExt<T> on (T?, AppError?) {
  State<T> state() {
    final (data, error) = this;
    if (data != null) {
      return ResultState(data: data);
    }
    if (error != null) {
      return ErrorState(message: '', trace: StackTrace.current);
    }
    return ResultState(data: data as T);
  }

  B fold<B>(B Function(AppError error) error, B Function(T data) result) {
    final (data, err) = this;
    if (err != null) {
      return error(err);
    }
    if (data != null) {
      return result(data);
    }
    return result(data as T);
  }
}
