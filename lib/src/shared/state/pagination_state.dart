import 'package:api/api.dart';
import 'package:flutter/material.dart';
import 'package:mithzar/src/shared/components/app_loader.dart';

sealed class PaginationState<T extends List> {
  PaginationState({
    this.items,
    this.more = false,
    this.filter,
  });
  final T? items;
  final bool more;
  final PaginationFilter? filter;
}

class PaginationLoading<T extends List> extends PaginationState<T> {
  PaginationLoading({super.filter});
}

class PaginationError<T extends List> extends PaginationState<T> {
  PaginationError({required this.message});

  final String message;
}

class PaginationResult<T extends List> extends PaginationState<T> {
  PaginationResult({
    super.items,
    super.more,
    required super.filter,
  });
}

extension PaginationExtension<T extends List> on PaginationState<T> {
  Widget unfold(Widget Function(T data) child) {
    return switch (this) {
      PaginationLoading() => const AppLoader(),
      PaginationError(message: final message) => Text(message),
      PaginationResult<T>(items: final items) => child(items ?? [] as T)
    };
  }

  Widget unfoldSliver(Widget Function(T data) child) {
    return switch (this) {
      PaginationLoading() => const SliverFillRemaining(child: AppLoader()),
      PaginationError(message: final message) =>
        SliverToBoxAdapter(child: Text(message)),
      PaginationResult<T>(items: final items) => child(items ?? [] as T)
    };
  }
}
