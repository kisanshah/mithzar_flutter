import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mithzar/data/helper/app_error.dart';
import 'package:mithzar/features/components/app_loader.dart';
import 'package:mithzar/features/theme/app_color.dart';

extension AsyncValueExt<T> on AsyncValue<T> {
  Widget unfold(Widget Function(T result) child) {
    return switch (this) {
      AsyncData<T>(:final value?) => child(value),
      AsyncError<T>(:final AppError error) => Text(
          error.message,
          style: const TextStyle(color: AppColor.red),
        ),
      AsyncError<T>(:final error) =>  Text(
          kDebugMode ? error.toString() : 'Something went wrong!',
          style: const TextStyle(color: AppColor.red),
        ),
      _ => const AppLoader(),
    };
  }
}
