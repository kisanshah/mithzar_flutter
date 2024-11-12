import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mithzar/core/helper/app_error.dart';
import 'package:mithzar/src/shared/components/app_loader.dart';

extension AsyncValueExt<T> on AsyncValue<T> {
  Widget unfoldInitial(Widget Function(T result) child) {
    return switch (this) {
      AsyncValue<T>(:final value?) => child(value),
      AsyncValue<T>(:final AppError error) => Text(
          error.message,
        ),
      _ => const AppLoader(),
    };
  }

  Widget unfold(Widget Function(T result) child) {
    return switch (this) {
      AsyncError(:final AppError error) => Text(
          error.message,
        ),
      AsyncError(:final error, :final stackTrace) => Text(
          kDebugMode
              ? 'Error : $error\n StackTrace : $stackTrace'
              : 'Something went wrong!',
        ),
      AsyncValue(:final T value, hasValue: true, isLoading: false) =>
        child(value),
      _ => const AppLoader(),
    };
  }

  Widget unfoldSliver(Widget Function(T result) child) {
    return switch (this) {
      AsyncError(:final AppError error) => SliverToBoxAdapter(
          child: Text(
            error.message,
          ),
        ),
      AsyncError(:final error, :final stackTrace) => SliverToBoxAdapter(
          child: Text(
            kDebugMode
                ? 'Error : $error\n StackTrace : $stackTrace'
                : 'Something went wrong!',
          ),
        ),
      AsyncValue(:final T value, hasValue: true, isLoading: false) =>
        child(value),
      _ => const SliverToBoxAdapter(child: AppLoader()),
    };
  }
}
